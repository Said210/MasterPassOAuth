require 'uri'
require 'openssl'
include REXML
class TestController < ApplicationController
	before_action :bf_method
	after_action :save_session_data
	rescue_from RuntimeError, with: :set_error_message
	skip_before_action :verify_authenticity_token, only: [:shopping_cart, :postback]
	def index
	end
	def generate_private_key
		OpenSSL::PKCS12.new(File.open(@data.keystore_path),@data.keystore_password).key
	end
	def oauth
		@data.xml_version = "v6"
		@data.shipping_suppression = false
		@data.rewards = false
		@data.auth_level_basic = false
		@data.redirect_shipping_profiles = ""
		@data.accepted_cards = "master,amex,diners,discover,maestro,visa"
		get_request_token
		post_shopping_cart
	end
	def cart_callback
		@data.request_token_response = @service.get_request_token(@data.request_url, @data.callback_domain)
		@data.request_token = @data.request_token_response.oauth_token
		handle_oauth_callback
		get_access_token
		get_checkout_data
		render :oauth
	end

	def postback
		log_transaction	
	end

	def bf_method
		@data = session['data'] = MasterpassData.new("config.yml")
		@service = Mastercard::Masterpass::MasterpassService.new(@data.consumer_key, generate_private_key, @data.callback_domain, Mastercard::Common::SANDBOX)
		MasterpassDataMapper.new
	    # clear any previous error messages
	    @data.error_message = nil
	    # get the current host name for dynamic url generation
	    @data.callback_domain = @host_name = request.protocol + request.host || "http://projectabc.com"
	end
	def get_request_token
		@data.request_token_response = @service.get_request_token(@data.request_url, @data.callback_domain)
		@data.request_token = @data.request_token_response.oauth_token
		save_connection
	end
	def save_connection
		@data.auth_header = @service.auth_header
		@data.encoded_auth_header = URI.escape(@data.auth_header)
		@data.signature_base_string = @service.signature_base_string
		@request = @data.request_token_response.oauth_token_secret
	end
	def shopping_cart
		post_shopping_cart
	end
	def save_session_data
		Rails.logger.debug "HOLA _ Session"
		session['data'] = nil
		session['data'] = @data
	end
	def post_shopping_cart
		Rails.logger.debug "HOLA REQUEST––––––––––––––––––––––––––––––"
		file = File.read(File.join('resources', 'shoppingCart.xml'))
		@data.shopping_cart_request = ShoppingCartRequest.from_xml(file)
		@data.shopping_cart = @data.shopping_cart_request.shoppingCart
		@data.shopping_cart.shoppingCartItem.each do |i|
			i.description = i.description[0..99] if i.description.length > 100
			i.description = i.description[0..98] if i.description.last == "&"
		end
		@data.shopping_cart_request.oAuthToken = @data.request_token
		@data.shopping_cart_request.originUrl = @data.callback_domain
		@data.shopping_cart_response = ShoppingCartResponse.from_xml(@service.post_shopping_cart_data(@data.shopping_cart_url, @data.shopping_cart_request.to_xml_s)) 
		
	end
	def set_error_message(error)
		@data.error_message = error.to_s
		render 
	end
	def handle_oauth_callback
		@data.request_token = params['oauth_token']
		@data.verifier = params['oauth_verifier']
		@data.checkout_resource_url = params['checkout_resource_url']
		Rails.logger.debug @data.to_yaml
		handle_pairing_callback if params['pairing_token'] && params['pairing_verifier']
	end
	def get_access_token
		@data.access_token_response = @service.get_access_token(@data.access_url, @data.request_token, @data.verifier)
		@data.access_token = @data.access_token_response.oauth_token
		save_connection_header
	end

	def get_checkout_data
		@data.checkout = Checkout.from_xml(@service.get_payment_shipping_resource(@data.checkout_resource_url, @data.access_token));
		save_connection_header
	end

	def log_transaction
		order_amount = 1000;
		if (@data.shopping_cart)
			order_amount = @data.shopping_cart.subtotal
			order_amount = order_amount + @data.tax + @data.shipping
		end
		approval_code = "sample"
		if (!approval_code)
			approval_code = "UNAVBL"
		end
		merchant_transactions = MerchantTransactions.new

		Rails.logger.debug @data.checkout.to_yaml

		Rails.logger.debug @data.to_yaml
		merchant_transaction = MerchantTransaction.new(@data.checkout_identifier, @data.consumer_key, "USD", order_amount, Time.now, "Success", approval_code, @data.precheckout_transaction_id)
		merchant_transactions << merchant_transaction
		@data.merchant_transactions = merchant_transactions
		xml = merchant_transactions.to_xml
    # we need to pluralize the child MerchantTransaction node name to adhere to the XML schema
    XPath.first(xml, "//MerchantTransaction").name = "MerchantTransactions"
    @data.post_transaction_sent_xml = xml.to_s
    response_xml = ""
    Document.new(@service.post_checkout_transaction(@data.postback_url, xml), {:compress_whitespace => :all}).write(response_xml, 2)
    @data.post_transaction_received_xml = response_xml
    # and change the child MerchantTransaction node name back to singular for proper xml mapping if we want to get a Ruby object back from the xml
    
    # XPath.first(response_xml, "//MerchantTransactions/*[not(root)]").name = "MerchantTransaction"
    # MerchantInitializationResponse.from_xml(response_xml.to_s)
    save_connection_header
end
  def save_connection_header
    @data.auth_header = @service.auth_header
    @data.encoded_auth_header = URI.escape(@data.auth_header)
    @data.signature_base_string = @service.signature_base_string
  end
end
