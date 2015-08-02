require 'uri'
require 'openssl'
include REXML
class TestController < ApplicationController
	before_action :bf_method
  	after_action :save_session_data
  	rescue_from RuntimeError, with: :set_error_message
  	skip_before_action :verify_authenticity_token, only: [:shopping_cart]
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
		@data.request_token_response = @service.get_request_token(@data.request_url, @data.callback_domain)
	    @data.request_token = @data.request_token_response.oauth_token
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
	    Rails.logger.debug "HOLA REQUEST––––––––––––––––––––––––––––––"
		Rails.logger.debug @data.to_yaml
	    @data.shopping_cart_response = ShoppingCartResponse.from_xml(@service.post_shopping_cart_data(@data.shopping_cart_url, @data.shopping_cart_request.to_xml_s)) 
		
	end
	def set_error_message(error)
	    @data.error_message = error.to_s
	    render
	end
end
