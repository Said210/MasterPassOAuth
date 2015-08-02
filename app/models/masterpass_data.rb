class MasterpassData
  include ActiveModel::Model
  attr_accessor :request_url,
                :shopping_cart_url,
                :access_url,
                :postback_url,
                :request_token,
                :request_token_response,
                :access_token_response,
                :long_access_token_response,
                
                :access_token,
                :long_access_token,
                :verifier,
                :checkout_resource_url,
                :consumer_key,
                :checkout_identifier,
                :keystore_path,
                :keystore_password,
                
                :callback_url,
                :callback_domain,
                :callback_path,
                :shipping_profiles,
                :realm,
                :cart_callback_path,
                :connected_callback_path,
                
                :accepted_cards,
                :xml_version,
                :shipping_suppression,
                :auth_level_basic,
                :rewards,
                :allowed_loyalty_programs,
                :redirect_shipping_profiles,
                :wallet_name,
                :consumer_wallet_id,
                
                :shopping_cart_request,
                :shopping_cart_response,
                :shopping_cart,
                :merchant_init_request,
                :merchant_init_response,
                :merchant_init,
                :merchant_init_url,
                
                :merchant_transactions,
                :post_transaction_sent_xml,
                :post_transaction_received_xml,
                
                :checkout,
                :checkout_response,
                
                :precheckout_request,
                :precheckout_response,
                :precheckout_data,
                :precheckout_url,
                :precheckout_card_id,
                :precheckout_shipping_id,
                :precheckout_transaction_id,
                
                :signature_base_string,
                :auth_header,
                :encoded_auth_header,
                
                :error_message,
                
                :tax,
                :shipping,
                
                :pairing_callback_path,
                :pairing_token,
                :pairing_verifier,
                :card_id,
                :shipping_id,
                :pairing_data_types,
                :connected_callback_path,
                
                :lightbox_url,
                :omniture_url
                
      def initialize(config_file = nil)
        @settings = get_settings(config_file)
        @consumer_key = @settings['CONSUMER_KEY']
        @request_url = @settings['REQUEST_URL']
        @shopping_cart_url = @settings['SHOPPING_CART_URL']
        @access_url = @settings['ACCESS_URL']
        @postback_url = @settings['POSTBACK_URL']
        @pre_checkout_url = @settings['PRE_CHECKOUT_URL']
        @merchant_init_url = @settings['MERCHANT_INIT_URL']
        @pairing_callback_path = @settings['PAIRING_CALLBACK_PATH']
        @cart_callback_path = @settings['CART_CALLBACK_PATH']
        @precheckout_url = @settings['PRE_CHECKOUT_URL']
       
        @callback_domain = @settings['CALLBACK_DOMAIN']
        @callback_path = @settings['CALLBACK_PATH']
        @callback_url = @callback_path
        @connected_callback_path = @settings['CONNECTED_CALLBACK_PATH']

        @consumer_key  = @settings['CONSUMER_KEY']
        @checkout_identifier = @settings['CHECKOUT_IDENTIFIER']

        @realm_type = @settings['REALM']  

        @shipping_profiles = @settings['SHIPPING_PROFILES'].split(",")
       
        @keystore_path =  @settings['KEYSTORE_PATH']
        @keystore_password = @settings['KEYSTORE_PASSWORD']
        @auth_level_basic = @settings['AUTH_LEVEL_BASIC']
        @xml_version = @settings['XML_VERSION']
        @shipping_suppression = @settings['SHIPPING_SUPPRESSION']
        
        @allowed_loyalty_programs = @settings['ALLOWED_LOYALTY_PROGRAMS'].gsub(" ", "").split(",")
        
        @lightbox_url = @settings['LIGHTBOX_URL']
        @omniture_url = @settings['OMNITURE_URL']
        
        @tax = 348
        @shipping = 895
        
        @settings = nil
      end
      
      private
      
      def get_settings(config_file)
        config_file = "config.yml" if config_file == nil
         settings = Hash.new
         env_file = File.join('resources', config_file)
         YAML.load(File.open(env_file)).each do |key, value|
           settings[key.to_s] = value
         end if File.exists?(env_file)
         return settings
      end
                 
end