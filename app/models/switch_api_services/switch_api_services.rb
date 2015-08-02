# require 'v_2_mapper'
# mapper = V_2Mapper.new
# obj = CheckoutShoppingCart.new
# obj.shopping_cart = ShoppingCart.new
# puts mapper.obj2xml(obj)
# p mapper.xml2obj(mapper.obj2xml(obj))

require 'xsd/qname'
# {}CardBrandsResponse
#   cardBrands - CardBrands
#   extensionPoint - ExtensionPoint
class CardBrandsResponse
  attr_accessor :cardBrands
  attr_accessor :extensionPoint

  def initialize(cardBrands = nil, extensionPoint = nil)
    @cardBrands = cardBrands
    @extensionPoint = extensionPoint
  end
end

# {}ShoppingCartResults
#   oAuthToken - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
#   shoppingCart - ShoppingCart
class ShoppingCartResults
  attr_accessor :oAuthToken
  attr_accessor :extensionPoint
  attr_accessor :shoppingCart

  def initialize(oAuthToken = nil, extensionPoint = nil, shoppingCart = nil)
    @oAuthToken = oAuthToken
    @extensionPoint = extensionPoint
    @shoppingCart = shoppingCart
  end
end

# {}UserLocale
#   locale - SOAP::SOAPString
#   country - SOAP::SOAPString
#   language - SOAP::SOAPString
#   localeModified - SOAP::SOAPBoolean
#   generatedFromCookie - SOAP::SOAPBoolean
#   extensionPoint - ExtensionPoint
class UserLocale
  attr_accessor :locale
  attr_accessor :country
  attr_accessor :language
  attr_accessor :localeModified
  attr_accessor :generatedFromCookie
  attr_accessor :extensionPoint

  def initialize(locale = nil, country = nil, language = nil, localeModified = nil, generatedFromCookie = nil, extensionPoint = nil)
    @locale = locale
    @country = country
    @language = language
    @localeModified = localeModified
    @generatedFromCookie = generatedFromCookie
    @extensionPoint = extensionPoint
  end
end

# {}WalletProviderSearch
#   country - CountryCode
#   startIndex - SOAP::SOAPInt
#   numberOfResults - SOAP::SOAPInt
#   walletProviderName - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class WalletProviderSearch
  attr_accessor :country
  attr_accessor :startIndex
  attr_accessor :numberOfResults
  attr_accessor :walletProviderName
  attr_accessor :extensionPoint

  def initialize(country = nil, startIndex = nil, numberOfResults = nil, walletProviderName = nil, extensionPoint = nil)
    @country = country
    @startIndex = startIndex
    @numberOfResults = numberOfResults
    @walletProviderName = walletProviderName
    @extensionPoint = extensionPoint
  end
end

# {}WalletProviderSearchResults
#   totalResults - SOAP::SOAPInt
#   walletProvider - WalletProvider
#   extensionPoint - ExtensionPoint
class WalletProviderSearchResults
  attr_accessor :totalResults
  attr_accessor :walletProvider
  attr_accessor :extensionPoint

  def initialize(totalResults = nil, walletProvider = [], extensionPoint = nil)
    @totalResults = totalResults
    @walletProvider = walletProvider
    @extensionPoint = extensionPoint
  end
end

# {}MerchantInitializationRequest
#   oAuthToken - SOAP::SOAPString
#   preCheckoutTransactionId - SOAP::SOAPString
#   originUrl - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class MerchantInitializationRequest
  include MasterpassMappable
  attr_accessor :oAuthToken
  attr_accessor :preCheckoutTransactionId
  attr_accessor :originUrl
  attr_accessor :extensionPoint

  def initialize(oAuthToken = nil, preCheckoutTransactionId = nil, originUrl = nil, extensionPoint = nil)
    @oAuthToken = oAuthToken
    @preCheckoutTransactionId = preCheckoutTransactionId
    @originUrl = originUrl
    @extensionPoint = extensionPoint
  end
end

# {}MerchantInitializationResponse
#   oAuthToken - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class MerchantInitializationResponse
  include MasterpassMappable
  attr_accessor :oAuthToken
  attr_accessor :extensionPoint

  def initialize(oAuthToken = nil, extensionPoint = nil)
    @oAuthToken = oAuthToken
    @extensionPoint = extensionPoint
  end
end

# {}AuthorizePairingRequest
#   pairingDataTypes - PairingDataTypes
#   oAuthToken - SOAP::SOAPString
#   merchantCheckoutId - SOAP::SOAPString
#   consumerWalletId - SOAP::SOAPString
#   walletId - SOAP::SOAPString
#   expressCheckout - SOAP::SOAPBoolean
#   consumerCountry - Country
#   silentPairing - SOAP::SOAPBoolean
#   extensionPoint - ExtensionPoint
class AuthorizePairingRequest
  attr_accessor :pairingDataTypes
  attr_accessor :oAuthToken
  attr_accessor :merchantCheckoutId
  attr_accessor :consumerWalletId
  attr_accessor :walletId
  attr_accessor :expressCheckout
  attr_accessor :consumerCountry
  attr_accessor :silentPairing
  attr_accessor :extensionPoint

  def initialize(pairingDataTypes = nil, oAuthToken = nil, merchantCheckoutId = nil, consumerWalletId = nil, walletId = nil, expressCheckout = nil, consumerCountry = nil, silentPairing = nil, extensionPoint = nil)
    @pairingDataTypes = pairingDataTypes
    @oAuthToken = oAuthToken
    @merchantCheckoutId = merchantCheckoutId
    @consumerWalletId = consumerWalletId
    @walletId = walletId
    @expressCheckout = expressCheckout
    @consumerCountry = consumerCountry
    @silentPairing = silentPairing
    @extensionPoint = extensionPoint
  end
end

# {}AuthorizePairingResponse
#   verifierToken - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class AuthorizePairingResponse
  attr_accessor :verifierToken
  attr_accessor :extensionPoint

  def initialize(verifierToken = nil, extensionPoint = nil)
    @verifierToken = verifierToken
    @extensionPoint = extensionPoint
  end
end

# {}ConnectedMerchantsRequest
#   consumerWalletId - SOAP::SOAPString
#   walletId - SOAP::SOAPString
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   extensionPoint - ExtensionPoint
class ConnectedMerchantsRequest
  attr_accessor :consumerWalletId
  attr_accessor :walletId
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :extensionPoint

  def initialize(consumerWalletId = nil, walletId = nil, startDate = nil, endDate = nil, extensionPoint = nil)
    @consumerWalletId = consumerWalletId
    @walletId = walletId
    @startDate = startDate
    @endDate = endDate
    @extensionPoint = extensionPoint
  end
end

# {}ConnectionHistoryRequest
#   merchantCheckoutId - SOAP::SOAPString
#   startDate - SOAP::SOAPDateTime
#   endDate - SOAP::SOAPDateTime
#   walletId - SOAP::SOAPString
#   consumerWalletId - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class ConnectionHistoryRequest
  attr_accessor :merchantCheckoutId
  attr_accessor :startDate
  attr_accessor :endDate
  attr_accessor :walletId
  attr_accessor :consumerWalletId
  attr_accessor :extensionPoint

  def initialize(merchantCheckoutId = nil, startDate = nil, endDate = nil, walletId = nil, consumerWalletId = nil, extensionPoint = nil)
    @merchantCheckoutId = merchantCheckoutId
    @startDate = startDate
    @endDate = endDate
    @walletId = walletId
    @consumerWalletId = consumerWalletId
    @extensionPoint = extensionPoint
  end
end

# {}DeletePairingRequest
#   merchantName - SOAP::SOAPString
#   consumerWalletId - SOAP::SOAPString
#   walletId - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
#   connectionId - SOAP::SOAPString
class DeletePairingRequest
  attr_accessor :merchantName
  attr_accessor :consumerWalletId
  attr_accessor :walletId
  attr_accessor :extensionPoint
  attr_accessor :connectionId

  def initialize(merchantName = nil, consumerWalletId = nil, walletId = nil, extensionPoint = nil, connectionId = nil)
    @merchantName = merchantName
    @consumerWalletId = consumerWalletId
    @walletId = walletId
    @extensionPoint = extensionPoint
    @connectionId = connectionId
  end
end

# {}DeletePairingResponse
#   statusMsg - SOAP::SOAPString
#   errors - Errors
class DeletePairingResponse
  attr_accessor :statusMsg
  attr_accessor :errors

  def initialize(statusMsg = nil, errors = nil)
    @statusMsg = statusMsg
    @errors = errors
  end
end

# {}MerchantPermissionResponse
#   connectPermitted - SOAP::SOAPBoolean
#   expressCheckoutPermitted - SOAP::SOAPBoolean
#   pairingDataTypes - PairingDataTypes
class MerchantPermissionResponse
  attr_accessor :connectPermitted
  attr_accessor :expressCheckoutPermitted
  attr_accessor :pairingDataTypes

  def initialize(connectPermitted = nil, expressCheckoutPermitted = nil, pairingDataTypes = nil)
    @connectPermitted = connectPermitted
    @expressCheckoutPermitted = expressCheckoutPermitted
    @pairingDataTypes = pairingDataTypes
  end
end

# {}MerchantParametersRequest
#   merchantCheckoutIdentifier - SOAP::SOAPString
#   requestBasicCheckout - SOAP::SOAPBoolean
#   oauthToken - SOAP::SOAPString
#   preCheckoutTransactionId - SOAP::SOAPString
#   originUrl - SOAP::SOAPString
#   returnUrl - SOAP::SOAPString
#   merchantCallbackUrl - SOAP::SOAPString
#   queryString - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class MerchantParametersRequest
  attr_accessor :merchantCheckoutIdentifier
  attr_accessor :requestBasicCheckout
  attr_accessor :oauthToken
  attr_accessor :preCheckoutTransactionId
  attr_accessor :originUrl
  attr_accessor :returnUrl
  attr_accessor :merchantCallbackUrl
  attr_accessor :queryString
  attr_accessor :extensionPoint

  def initialize(merchantCheckoutIdentifier = nil, requestBasicCheckout = nil, oauthToken = nil, preCheckoutTransactionId = nil, originUrl = nil, returnUrl = nil, merchantCallbackUrl = nil, queryString = nil, extensionPoint = nil)
    @merchantCheckoutIdentifier = merchantCheckoutIdentifier
    @requestBasicCheckout = requestBasicCheckout
    @oauthToken = oauthToken
    @preCheckoutTransactionId = preCheckoutTransactionId
    @originUrl = originUrl
    @returnUrl = returnUrl
    @merchantCallbackUrl = merchantCallbackUrl
    @queryString = queryString
    @extensionPoint = extensionPoint
  end
end

# {}MerchantParametersResponse
#   merchantParametersId - SOAP::SOAPString
#   merchantCallbackUrl - SOAP::SOAPString
#   returnUrl - SOAP::SOAPString
#   merchantSuppressSignUp - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class MerchantParametersResponse
  attr_accessor :merchantParametersId
  attr_accessor :merchantCallbackUrl
  attr_accessor :returnUrl
  attr_accessor :merchantSuppressSignUp
  attr_accessor :extensionPoint

  def initialize(merchantParametersId = nil, merchantCallbackUrl = nil, returnUrl = nil, merchantSuppressSignUp = nil, extensionPoint = nil)
    @merchantParametersId = merchantParametersId
    @merchantCallbackUrl = merchantCallbackUrl
    @returnUrl = returnUrl
    @merchantSuppressSignUp = merchantSuppressSignUp
    @extensionPoint = extensionPoint
  end
end

# {}MerchantPermissionRequest
#   merchantCheckoutId - SOAP::SOAPString
#   oAuthToken - SOAP::SOAPString
class MerchantPermissionRequest
  attr_accessor :merchantCheckoutId
  attr_accessor :oAuthToken

  def initialize(merchantCheckoutId = nil, oAuthToken = nil)
    @merchantCheckoutId = merchantCheckoutId
    @oAuthToken = oAuthToken
  end
end

# {}MerchantPermissionResponseWrapper
#   merchantPermissionResponse - MerchantPermissionResponse
class MerchantPermissionResponseWrapper
  attr_accessor :merchantPermissionResponse

  def initialize(merchantPermissionResponse = nil)
    @merchantPermissionResponse = merchantPermissionResponse
  end
end

# {}ShoppingCartResultsWrapper
#   shoppingCartResults - ShoppingCartResults
class ShoppingCartResultsWrapper
  attr_accessor :shoppingCartResults

  def initialize(shoppingCartResults = nil)
    @shoppingCartResults = shoppingCartResults
  end
end

# {}UserLocaleWrapper
#   userLocale - UserLocale
class UserLocaleWrapper
  attr_accessor :userLocale

  def initialize(userLocale = nil)
    @userLocale = userLocale
  end
end

# {}WalletProviderSearchResultsWrapper
#   walletProviderSearchResults - WalletProviderSearchResults
class WalletProviderSearchResultsWrapper
  attr_accessor :walletProviderSearchResults

  def initialize(walletProviderSearchResults = nil)
    @walletProviderSearchResults = walletProviderSearchResults
  end
end

# {}ChainedTokenRequest
#   oAuthToken - SOAP::SOAPString
#   merchantCheckoutIdentifier - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class ChainedTokenRequest
  attr_accessor :oAuthToken
  attr_accessor :merchantCheckoutIdentifier
  attr_accessor :extensionPoint

  def initialize(oAuthToken = nil, merchantCheckoutIdentifier = nil, extensionPoint = nil)
    @oAuthToken = oAuthToken
    @merchantCheckoutIdentifier = merchantCheckoutIdentifier
    @extensionPoint = extensionPoint
  end
end

# {}ChainedTokenResponse
#   requestToken - SOAP::SOAPString
#   verifierToken - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class ChainedTokenResponse
  attr_accessor :requestToken
  attr_accessor :verifierToken
  attr_accessor :extensionPoint

  def initialize(requestToken = nil, verifierToken = nil, extensionPoint = nil)
    @requestToken = requestToken
    @verifierToken = verifierToken
    @extensionPoint = extensionPoint
  end
end

# {}ConnectedMerchantsResponse
#   merchants - Merchant
#   extensionPoint - ExtensionPoint
class ConnectedMerchantsResponse
  attr_accessor :merchants
  attr_accessor :extensionPoint

  def initialize(merchants = [], extensionPoint = nil)
    @merchants = merchants
    @extensionPoint = extensionPoint
  end
end

# {}Address
#   line1 - SOAP::SOAPString
#   line2 - SOAP::SOAPString
#   line3 - SOAP::SOAPString
#   city - SOAP::SOAPString
#   countrySubdivision - SOAP::SOAPString
#   postalCode - SOAP::SOAPString
#   country - SOAP::SOAPString
class Address
  attr_accessor :line1
  attr_accessor :line2
  attr_accessor :line3
  attr_accessor :city
  attr_accessor :countrySubdivision
  attr_accessor :postalCode
  attr_accessor :country

  def initialize(line1 = nil, line2 = nil, line3 = nil, city = nil, countrySubdivision = nil, postalCode = nil, country = nil)
    @line1 = line1
    @line2 = line2
    @line3 = line3
    @city = city
    @countrySubdivision = countrySubdivision
    @postalCode = postalCode
    @country = country
  end
end

# {}CardBrand
#   name - SOAP::SOAPString
#   code - SOAP::SOAPString
#   logo - Logo
#   acceptanceMarkLogo - Logo
class CardBrand
  attr_accessor :name
  attr_accessor :code
  attr_accessor :logo
  attr_accessor :acceptanceMarkLogo

  def initialize(name = nil, code = nil, logo = nil, acceptanceMarkLogo = nil)
    @name = name
    @code = code
    @logo = logo
    @acceptanceMarkLogo = acceptanceMarkLogo
  end
end

# {}CardBrands
class CardBrands < ::Array
end

# {}CardBrandSearch
#   cardNumberPrefix - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class CardBrandSearch
  attr_accessor :cardNumberPrefix
  attr_accessor :extensionPoint

  def initialize(cardNumberPrefix = nil, extensionPoint = nil)
    @cardNumberPrefix = cardNumberPrefix
    @extensionPoint = extensionPoint
  end
end

# {}CardSecurityRequired
#   active - SOAP::SOAPBoolean
#   secureCodeCardSecurityDetails - SecureCodeCardSecurityDetails
#   extensionPoint - ExtensionPoint
class CardSecurityRequired
  attr_accessor :active
  attr_accessor :secureCodeCardSecurityDetails
  attr_accessor :extensionPoint

  def initialize(active = nil, secureCodeCardSecurityDetails = nil, extensionPoint = nil)
    @active = active
    @secureCodeCardSecurityDetails = secureCodeCardSecurityDetails
    @extensionPoint = extensionPoint
  end
end

# {}CartItem
#   description - SOAP::SOAPString
#   quantity - SOAP::SOAPLong
#   unitPrice - SOAP::SOAPString
#   logo - Logo
#   extensionPoint - ExtensionPoint
class CartItem
  attr_accessor :description
  attr_accessor :quantity
  attr_accessor :unitPrice
  attr_accessor :logo
  attr_accessor :extensionPoint

  def initialize(description = nil, quantity = nil, unitPrice = nil, logo = nil, extensionPoint = nil)
    @description = description
    @quantity = quantity
    @unitPrice = unitPrice
    @logo = logo
    @extensionPoint = extensionPoint
  end
end

# {}Checkout
#   id - SOAP::SOAPLong
#   ref - SOAP::SOAPString
#   name - Name
#   paymentMethod - PaymentCard
#   deliveryDestination - DeliveryDestination
#   extensionPoint - ExtensionPoint
#   loyaltyCard - LoyaltyCard
#   checkoutResourceUrl - SOAP::SOAPString
#   merchantCallbackUrl - SOAP::SOAPString
#   checkoutPairingCallbackUrl - SOAP::SOAPString
#   verifierToken - SOAP::SOAPString
class Checkout
  attr_accessor :id
  attr_accessor :ref
  attr_accessor :name
  attr_accessor :paymentMethod
  attr_accessor :deliveryDestination
  attr_accessor :extensionPoint
  attr_accessor :loyaltyCard
  attr_accessor :checkoutResourceUrl
  attr_accessor :merchantCallbackUrl
  attr_accessor :checkoutPairingCallbackUrl
  attr_accessor :verifierToken

  def initialize(id = nil, ref = nil, name = nil, paymentMethod = nil, deliveryDestination = nil, extensionPoint = nil, loyaltyCard = nil, checkoutResourceUrl = nil, merchantCallbackUrl = nil, checkoutPairingCallbackUrl = nil, verifierToken = nil)
    @id = id
    @ref = ref
    @name = name
    @paymentMethod = paymentMethod
    @deliveryDestination = deliveryDestination
    @extensionPoint = extensionPoint
    @loyaltyCard = loyaltyCard
    @checkoutResourceUrl = checkoutResourceUrl
    @merchantCallbackUrl = merchantCallbackUrl
    @checkoutPairingCallbackUrl = checkoutPairingCallbackUrl
    @verifierToken = verifierToken
  end
end

# {}Connection
#   connectionId - SOAP::SOAPLong
#   merchantName - SOAP::SOAPString
#   connectionName - SOAP::SOAPString
#   logo - Logo
#   dataTypes - DataTypes
#   oneClickSupported - SOAP::SOAPBoolean
#   oneClickEnabled - SOAP::SOAPBoolean
#   lastUpdatedUsed - SOAP::SOAPDateTime
#   connectedSinceDate - SOAP::SOAPString
#   expirationDate - SOAP::SOAPDateTime
#   merchantUrl - SOAP::SOAPAnyURI
#   extensionPoint - ExtensionPoint
class Connection
  attr_accessor :connectionId
  attr_accessor :merchantName
  attr_accessor :connectionName
  attr_accessor :logo
  attr_accessor :dataTypes
  attr_accessor :oneClickSupported
  attr_accessor :oneClickEnabled
  attr_accessor :lastUpdatedUsed
  attr_accessor :connectedSinceDate
  attr_accessor :expirationDate
  attr_accessor :merchantUrl
  attr_accessor :extensionPoint

  def initialize(connectionId = nil, merchantName = nil, connectionName = nil, logo = nil, dataTypes = nil, oneClickSupported = nil, oneClickEnabled = nil, lastUpdatedUsed = nil, connectedSinceDate = nil, expirationDate = nil, merchantUrl = nil, extensionPoint = nil)
    @connectionId = connectionId
    @merchantName = merchantName
    @connectionName = connectionName
    @logo = logo
    @dataTypes = dataTypes
    @oneClickSupported = oneClickSupported
    @oneClickEnabled = oneClickEnabled
    @lastUpdatedUsed = lastUpdatedUsed
    @connectedSinceDate = connectedSinceDate
    @expirationDate = expirationDate
    @merchantUrl = merchantUrl
    @extensionPoint = extensionPoint
  end
end

# {}ConnectionList
class ConnectionList < ::Array
end

# {}ConnectionHistory
#   merchantInfo - MerchantInfo
#   extensionPoint - ExtensionPoint
class ConnectionHistory
  attr_accessor :merchantInfo
  attr_accessor :extensionPoint

  def initialize(merchantInfo = nil, extensionPoint = nil)
    @merchantInfo = merchantInfo
    @extensionPoint = extensionPoint
  end
end

# {}ConnectionHistoryList
class ConnectionHistoryList < ::Array
end

# {}TermsOfUseUrls
class TermsOfUseUrls < ::Array
end

# {}LocalUrl
#   url - SOAP::SOAPString
#   country - SOAP::SOAPString
#   language - SOAP::SOAPString
#   documentName - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class LocalUrl
  attr_accessor :url
  attr_accessor :country
  attr_accessor :language
  attr_accessor :documentName
  attr_accessor :extensionPoint

  def initialize(url = nil, country = nil, language = nil, documentName = nil, extensionPoint = nil)
    @url = url
    @country = country
    @language = language
    @documentName = documentName
    @extensionPoint = extensionPoint
  end
end

# {}PrivacyUrls
class PrivacyUrls < ::Array
end

# {}CookieNoticeUrls
class CookieNoticeUrls < ::Array
end

# {}Countries
class Countries < ::Array
end

# {}Country
#   code - SOAP::SOAPString
#   name - SOAP::SOAPString
#   callingCode - SOAP::SOAPString
#   locale - Locale
#   extensionPoint - ExtensionPoint
class Country
  attr_accessor :code
  attr_accessor :name
  attr_accessor :callingCode
  attr_accessor :locale
  attr_accessor :extensionPoint

  def initialize(code = nil, name = nil, callingCode = nil, locale = [], extensionPoint = nil)
    @code = code
    @name = name
    @callingCode = callingCode
    @locale = locale
    @extensionPoint = extensionPoint
  end
end

# {}CountryCode
#   code - SOAP::SOAPString
class CountryCode
  attr_accessor :code

  def initialize(code = nil)
    @code = code
  end
end

# {}CountrySubdivision
#   code - SOAP::SOAPString
#   name - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class CountrySubdivision
  attr_accessor :code
  attr_accessor :name
  attr_accessor :extensionPoint

  def initialize(code = nil, name = nil, extensionPoint = nil)
    @code = code
    @name = name
    @extensionPoint = extensionPoint
  end
end

# {}CountrySubdivisions
class CountrySubdivisions < ::Array
end

# {}DataType
#   type - SOAP::SOAPString
class DataType
  attr_accessor :type

  def initialize(type = nil)
    @type = type
  end
end

# {}DataTypes
#   code - SOAP::SOAPString
#   description - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class DataTypes
  attr_accessor :code
  attr_accessor :description
  attr_accessor :extensionPoint

  def initialize(code = nil, description = nil, extensionPoint = nil)
    @code = code
    @description = description
    @extensionPoint = extensionPoint
  end
end

# {}DateOfBirth
#   year - SOAP::SOAPInt
#   month - (any)
#   day - SOAP::SOAPInt
#   extensionPoint - ExtensionPoint
class DateOfBirth
  attr_accessor :year
  attr_accessor :month
  attr_accessor :day
  attr_accessor :extensionPoint

  def initialize(year = nil, month = nil, day = nil, extensionPoint = nil)
    @year = year
    @month = month
    @day = day
    @extensionPoint = extensionPoint
  end
end

# {}DeliveryDestination
#   shippingDestination - ShippingDestination
#   emailDestination - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class DeliveryDestination
  attr_accessor :shippingDestination
  attr_accessor :emailDestination
  attr_accessor :extensionPoint

  def initialize(shippingDestination = nil, emailDestination = nil, extensionPoint = nil)
    @shippingDestination = shippingDestination
    @emailDestination = emailDestination
    @extensionPoint = extensionPoint
  end
end

# {}Error
#   description - SOAP::SOAPString
#   reasonCode - SOAP::SOAPString
#   recoverable - SOAP::SOAPBoolean
#   source - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class Error
  attr_accessor :description
  attr_accessor :reasonCode
  attr_accessor :recoverable
  attr_accessor :source
  attr_accessor :extensionPoint

  def initialize(description = nil, reasonCode = nil, recoverable = nil, source = nil, extensionPoint = nil)
    @description = description
    @reasonCode = reasonCode
    @recoverable = recoverable
    @source = source
    @extensionPoint = extensionPoint
  end
end

# {}Errors
class Errors < ::Array
end

# {}ExtensionPoint
class ExtensionPoint
  attr_reader :__xmlele_any

  def set_any(elements)
    @__xmlele_any = elements
  end

  def initialize
    @__xmlele_any = nil
  end
end

# {}InvitationCodeCountries
class InvitationCodeCountries < ::Array
end

# {}LegalNotice
#   content - SOAP::SOAPString
#   effectiveDate - SOAP::SOAPDate
#   explicit - SOAP::SOAPBoolean
#   accepted - SOAP::SOAPBoolean
class LegalNotice
  attr_accessor :content
  attr_accessor :effectiveDate
  attr_accessor :explicit
  attr_accessor :accepted

  def initialize(content = nil, effectiveDate = nil, explicit = nil, accepted = nil)
    @content = content
    @effectiveDate = effectiveDate
    @explicit = explicit
    @accepted = accepted
  end
end

# {}CookiePolicy
#   content - SOAP::SOAPString
#   effectiveDate - SOAP::SOAPDate
#   explicit - SOAP::SOAPBoolean
#   accepted - SOAP::SOAPBoolean
class CookiePolicy < LegalNotice
  attr_accessor :content
  attr_accessor :effectiveDate
  attr_accessor :explicit
  attr_accessor :accepted

  def initialize(content = nil, effectiveDate = nil, explicit = nil, accepted = nil)
    @content = content
    @effectiveDate = effectiveDate
    @explicit = explicit
    @accepted = accepted
  end
end

# {}PrivacyPolicy
#   content - SOAP::SOAPString
#   effectiveDate - SOAP::SOAPDate
#   explicit - SOAP::SOAPBoolean
#   accepted - SOAP::SOAPBoolean
class PrivacyPolicy < LegalNotice
  attr_accessor :content
  attr_accessor :effectiveDate
  attr_accessor :explicit
  attr_accessor :accepted

  def initialize(content = nil, effectiveDate = nil, explicit = nil, accepted = nil)
    @content = content
    @effectiveDate = effectiveDate
    @explicit = explicit
    @accepted = accepted
  end
end

# {}TermsAndConditions
#   content - SOAP::SOAPString
#   effectiveDate - SOAP::SOAPDate
#   explicit - SOAP::SOAPBoolean
#   accepted - SOAP::SOAPBoolean
class TermsAndConditions < LegalNotice
  attr_accessor :content
  attr_accessor :effectiveDate
  attr_accessor :explicit
  attr_accessor :accepted

  def initialize(content = nil, effectiveDate = nil, explicit = nil, accepted = nil)
    @content = content
    @effectiveDate = effectiveDate
    @explicit = explicit
    @accepted = accepted
  end
end

# {}Locale
#   locale - SOAP::SOAPString
#   language - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class Locale
  attr_accessor :locale
  attr_accessor :language
  attr_accessor :extensionPoint

  def initialize(locale = nil, language = nil, extensionPoint = nil)
    @locale = locale
    @language = language
    @extensionPoint = extensionPoint
  end
end

# {}Locales
class Locales < ::Array
end

# {}Logo
#   ref - SOAP::SOAPString
#   height - SOAP::SOAPString
#   width - SOAP::SOAPString
#   backgroundColor - SOAP::SOAPString
#   url - SOAP::SOAPAnyURI
#   longDescription - SOAP::SOAPString
#   alternateText - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class Logo
  attr_accessor :ref
  attr_accessor :height
  attr_accessor :width
  attr_accessor :backgroundColor
  attr_accessor :url
  attr_accessor :longDescription
  attr_accessor :alternateText
  attr_accessor :extensionPoint

  def initialize(ref = nil, height = nil, width = nil, backgroundColor = nil, url = nil, longDescription = nil, alternateText = nil, extensionPoint = nil)
    @ref = ref
    @height = height
    @width = width
    @backgroundColor = backgroundColor
    @url = url
    @longDescription = longDescription
    @alternateText = alternateText
    @extensionPoint = extensionPoint
  end
end

# {}LoyaltyBrand
#   brandName - SOAP::SOAPString
#   brandId - SOAP::SOAPString
#   logo - Logo
#   country - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class LoyaltyBrand
  attr_accessor :brandName
  attr_accessor :brandId
  attr_accessor :logo
  attr_accessor :country
  attr_accessor :extensionPoint

  def initialize(brandName = nil, brandId = nil, logo = nil, country = nil, extensionPoint = nil)
    @brandName = brandName
    @brandId = brandId
    @logo = logo
    @country = country
    @extensionPoint = extensionPoint
  end
end

# {}LoyaltyCard
#   loyaltyCardId - SOAP::SOAPLong
#   loyaltyBrandId - SOAP::SOAPLong
#   membershipNumber - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
#   expiryMonth - SOAP::SOAPString
#   expiryYear - SOAP::SOAPString
class LoyaltyCard
  attr_accessor :loyaltyCardId
  attr_accessor :loyaltyBrandId
  attr_accessor :membershipNumber
  attr_accessor :extensionPoint
  attr_accessor :expiryMonth
  attr_accessor :expiryYear

  def initialize(loyaltyCardId = nil, loyaltyBrandId = nil, membershipNumber = nil, extensionPoint = nil, expiryMonth = nil, expiryYear = nil)
    @loyaltyCardId = loyaltyCardId
    @loyaltyBrandId = loyaltyBrandId
    @membershipNumber = membershipNumber
    @extensionPoint = extensionPoint
    @expiryMonth = expiryMonth
    @expiryYear = expiryYear
  end
end

# {}LoyaltyCards
class LoyaltyCards < ::Array
end

# {}Merchant
#   name - SOAP::SOAPString
#   displayName - SOAP::SOAPString
#   merchantType - SOAP::SOAPString
#   productionUrl - SOAP::SOAPString
#   sandboxUrl - SOAP::SOAPString
#   merchantCheckoutId - SOAP::SOAPString
#   logo - Logo
#   extensionPoint - ExtensionPoint
class Merchant
  attr_accessor :name
  attr_accessor :displayName
  attr_accessor :merchantType
  attr_accessor :productionUrl
  attr_accessor :sandboxUrl
  attr_accessor :merchantCheckoutId
  attr_accessor :logo
  attr_accessor :extensionPoint

  def initialize(name = nil, displayName = nil, merchantType = nil, productionUrl = nil, sandboxUrl = nil, merchantCheckoutId = nil, logo = nil, extensionPoint = nil)
    @name = name
    @displayName = displayName
    @merchantType = merchantType
    @productionUrl = productionUrl
    @sandboxUrl = sandboxUrl
    @merchantCheckoutId = merchantCheckoutId
    @logo = logo
    @extensionPoint = extensionPoint
  end
end

# {}MobilePhone
#   countryCode - SOAP::SOAPString
#   phoneNumber - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class MobilePhone
  attr_accessor :countryCode
  attr_accessor :phoneNumber
  attr_accessor :extensionPoint

  def initialize(countryCode = nil, phoneNumber = nil, extensionPoint = nil)
    @countryCode = countryCode
    @phoneNumber = phoneNumber
    @extensionPoint = extensionPoint
  end
end

# {}Name
#   prefix - SOAP::SOAPString
#   first - SOAP::SOAPString
#   middle - SOAP::SOAPString
#   last - SOAP::SOAPString
#   suffix - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class Name
  attr_accessor :prefix
  attr_accessor :first
  attr_accessor :middle
  attr_accessor :last
  attr_accessor :suffix
  attr_accessor :extensionPoint

  def initialize(prefix = nil, first = nil, middle = nil, last = nil, suffix = nil, extensionPoint = nil)
    @prefix = prefix
    @first = first
    @middle = middle
    @last = last
    @suffix = suffix
    @extensionPoint = extensionPoint
  end
end

# {}ProfileName
#   prefix - SOAP::SOAPString
#   first - SOAP::SOAPString
#   middle - SOAP::SOAPString
#   last - SOAP::SOAPString
#   suffix - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
#   m_alias - SOAP::SOAPString
class ProfileName < Name
  attr_accessor :prefix
  attr_accessor :first
  attr_accessor :middle
  attr_accessor :last
  attr_accessor :suffix
  attr_accessor :extensionPoint

  def m_alias
    @v_alias
  end

  def m_alias=(value)
    @v_alias = value
  end

  def initialize(prefix = nil, first = nil, middle = nil, last = nil, suffix = nil, extensionPoint = nil, v_alias = nil)
    @prefix = prefix
    @first = first
    @middle = middle
    @last = last
    @suffix = suffix
    @extensionPoint = extensionPoint
    @v_alias = v_alias
  end
end

# {}NamePrefix
#   name - SOAP::SOAPString
#   code - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class NamePrefix
  attr_accessor :name
  attr_accessor :code
  attr_accessor :extensionPoint

  def initialize(name = nil, code = nil, extensionPoint = nil)
    @name = name
    @code = code
    @extensionPoint = extensionPoint
  end
end

# {}NamePrefixes
class NamePrefixes < ::Array
end

# {}PairingDataType
#   type - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class PairingDataType
  attr_accessor :type
  attr_accessor :extensionPoint

  def initialize(type = nil, extensionPoint = nil)
    @type = type
    @extensionPoint = extensionPoint
  end
end

# {}PairingDataTypes
class PairingDataTypes < ::Array
end

# {}PaymentCard
#   id - SOAP::SOAPLong
#   ref - SOAP::SOAPString
#   m_alias - SOAP::SOAPString
#   verificationStatus - SOAP::SOAPString
#   cardholderName - SOAP::SOAPString
#   cardBrand - CardBrand
#   directProvisionedSwitch - SOAP::SOAPBoolean
#   accountNumber - SOAP::SOAPString
#   maskedAccountNumber - SOAP::SOAPString
#   expiryMonth - SOAP::SOAPString
#   expiryYear - SOAP::SOAPString
#   securityCode - SOAP::SOAPString
#   phoneNumber - MobilePhone
#   preferred - SOAP::SOAPBoolean
#   address - Address
#   issuer - Logo
#   extensionPoint - ExtensionPoint
class PaymentCard
  attr_accessor :id
  attr_accessor :ref
  attr_accessor :verificationStatus
  attr_accessor :cardholderName
  attr_accessor :cardBrand
  attr_accessor :directProvisionedSwitch
  attr_accessor :accountNumber
  attr_accessor :maskedAccountNumber
  attr_accessor :expiryMonth
  attr_accessor :expiryYear
  attr_accessor :securityCode
  attr_accessor :phoneNumber
  attr_accessor :preferred
  attr_accessor :address
  attr_accessor :issuer
  attr_accessor :extensionPoint

  def m_alias
    @v_alias
  end

  def m_alias=(value)
    @v_alias = value
  end

  def initialize(id = nil, ref = nil, v_alias = nil, verificationStatus = nil, cardholderName = nil, cardBrand = nil, directProvisionedSwitch = nil, accountNumber = nil, maskedAccountNumber = nil, expiryMonth = nil, expiryYear = nil, securityCode = nil, phoneNumber = nil, preferred = nil, address = nil, issuer = nil, extensionPoint = nil)
    @id = id
    @ref = ref
    @v_alias = v_alias
    @verificationStatus = verificationStatus
    @cardholderName = cardholderName
    @cardBrand = cardBrand
    @directProvisionedSwitch = directProvisionedSwitch
    @accountNumber = accountNumber
    @maskedAccountNumber = maskedAccountNumber
    @expiryMonth = expiryMonth
    @expiryYear = expiryYear
    @securityCode = securityCode
    @phoneNumber = phoneNumber
    @preferred = preferred
    @address = address
    @issuer = issuer
    @extensionPoint = extensionPoint
  end
end

# {}PaymentCards
class PaymentCards < ::Array
end

# {}PersonalGreeting
#   personalGreetingText - SOAP::SOAPString
#   userAlias - SOAP::SOAPString
#   userId - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class PersonalGreeting
  attr_accessor :personalGreetingText
  attr_accessor :userAlias
  attr_accessor :userId
  attr_accessor :extensionPoint

  def initialize(personalGreetingText = nil, userAlias = nil, userId = nil, extensionPoint = nil)
    @personalGreetingText = personalGreetingText
    @userAlias = userAlias
    @userId = userId
    @extensionPoint = extensionPoint
  end
end

# {}Preferences
#   receiveEmailNotification - SOAP::SOAPBoolean
#   receiveMobileNotification - SOAP::SOAPBoolean
#   personalizationOptIn - SOAP::SOAPBoolean
class Preferences
  attr_accessor :receiveEmailNotification
  attr_accessor :receiveMobileNotification
  attr_accessor :personalizationOptIn

  def initialize(receiveEmailNotification = nil, receiveMobileNotification = nil, personalizationOptIn = nil)
    @receiveEmailNotification = receiveEmailNotification
    @receiveMobileNotification = receiveMobileNotification
    @personalizationOptIn = personalizationOptIn
  end
end

# {}Profile
#   id - SOAP::SOAPLong
#   ref - SOAP::SOAPString
#   emailAddress - (any)
#   mobilePhone - MobilePhone
#   name - ProfileName
#   preferences - Preferences
#   securityChallenge - SecurityChallenge
#   termsOfUseAccepted - SOAP::SOAPBoolean
#   privacyPolicyAccepted - SOAP::SOAPBoolean
#   cookiePolicyAccepted - SOAP::SOAPBoolean
#   personalGreeting - PersonalGreeting
#   cSRFToken - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
#   countryOfResidence - SOAP::SOAPString
#   locale - Locale
#   dateOfBirth - DateOfBirth
#   gender - Gender
#   nationalId - SOAP::SOAPString
#   directProvisionedSwitch - SOAP::SOAPBoolean
class Profile
  attr_accessor :id
  attr_accessor :ref
  attr_accessor :emailAddress
  attr_accessor :mobilePhone
  attr_accessor :name
  attr_accessor :preferences
  attr_accessor :securityChallenge
  attr_accessor :termsOfUseAccepted
  attr_accessor :privacyPolicyAccepted
  attr_accessor :cookiePolicyAccepted
  attr_accessor :personalGreeting
  attr_accessor :cSRFToken
  attr_accessor :extensionPoint
  attr_accessor :countryOfResidence
  attr_accessor :locale
  attr_accessor :dateOfBirth
  attr_accessor :gender
  attr_accessor :nationalId
  attr_accessor :directProvisionedSwitch

  def initialize(id = nil, ref = nil, emailAddress = nil, mobilePhone = nil, name = nil, preferences = nil, securityChallenge = [], termsOfUseAccepted = nil, privacyPolicyAccepted = nil, cookiePolicyAccepted = nil, personalGreeting = nil, cSRFToken = nil, extensionPoint = nil, countryOfResidence = nil, locale = nil, dateOfBirth = nil, gender = nil, nationalId = nil, directProvisionedSwitch = nil)
    @id = id
    @ref = ref
    @emailAddress = emailAddress
    @mobilePhone = mobilePhone
    @name = name
    @preferences = preferences
    @securityChallenge = securityChallenge
    @termsOfUseAccepted = termsOfUseAccepted
    @privacyPolicyAccepted = privacyPolicyAccepted
    @cookiePolicyAccepted = cookiePolicyAccepted
    @personalGreeting = personalGreeting
    @cSRFToken = cSRFToken
    @extensionPoint = extensionPoint
    @countryOfResidence = countryOfResidence
    @locale = locale
    @dateOfBirth = dateOfBirth
    @gender = gender
    @nationalId = nationalId
    @directProvisionedSwitch = directProvisionedSwitch
  end
end

# {}SecureCodeCardSecurityDetails
#   lookupData - SOAP::SOAPString
#   authorizationUrl - SOAP::SOAPString
#   merchantData - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class SecureCodeCardSecurityDetails
  attr_accessor :lookupData
  attr_accessor :authorizationUrl
  attr_accessor :merchantData
  attr_accessor :extensionPoint

  def initialize(lookupData = nil, authorizationUrl = nil, merchantData = nil, extensionPoint = nil)
    @lookupData = lookupData
    @authorizationUrl = authorizationUrl
    @merchantData = merchantData
    @extensionPoint = extensionPoint
  end
end

# {}SecurityChallenge
#   code - SOAP::SOAPString
#   question - SOAP::SOAPString
#   answer - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class SecurityChallenge
  attr_accessor :code
  attr_accessor :question
  attr_accessor :answer
  attr_accessor :extensionPoint

  def initialize(code = nil, question = nil, answer = nil, extensionPoint = nil)
    @code = code
    @question = question
    @answer = answer
    @extensionPoint = extensionPoint
  end
end

# {}SecurityChallenges
class SecurityChallenges < ::Array
end

# {}ShippingDestination
#   id - SOAP::SOAPLong
#   ref - SOAP::SOAPString
#   m_alias - SOAP::SOAPString
#   recipientName - SOAP::SOAPString
#   phoneNumber - MobilePhone
#   preferred - SOAP::SOAPBoolean
#   address - Address
#   directProvisionedSwitch - SOAP::SOAPBoolean
#   extensionPoint - ExtensionPoint
class ShippingDestination
  attr_accessor :id
  attr_accessor :ref
  attr_accessor :recipientName
  attr_accessor :phoneNumber
  attr_accessor :preferred
  attr_accessor :address
  attr_accessor :directProvisionedSwitch
  attr_accessor :extensionPoint

  def m_alias
    @v_alias
  end

  def m_alias=(value)
    @v_alias = value
  end

  def initialize(id = nil, ref = nil, v_alias = nil, recipientName = nil, phoneNumber = nil, preferred = nil, address = nil, directProvisionedSwitch = nil, extensionPoint = nil)
    @id = id
    @ref = ref
    @v_alias = v_alias
    @recipientName = recipientName
    @phoneNumber = phoneNumber
    @preferred = preferred
    @address = address
    @directProvisionedSwitch = directProvisionedSwitch
    @extensionPoint = extensionPoint
  end
end

# {}ShippingDestinations
class ShippingDestinations < ::Array
end

# {}ShoppingCart
#   cartTotal - SOAP::SOAPString
#   currencyCode - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
#   cartItem - CartItem
class ShoppingCart
  attr_accessor :cartTotal
  attr_accessor :currencyCode
  attr_accessor :extensionPoint
  attr_accessor :cartItem

  def initialize(cartTotal = nil, currencyCode = nil, extensionPoint = nil, cartItem = [])
    @cartTotal = cartTotal
    @currencyCode = currencyCode
    @extensionPoint = extensionPoint
    @cartItem = cartItem
  end
end

# {}ValidateSecurityChallenge
#   success - SOAP::SOAPBoolean
#   extensionPoint - ExtensionPoint
class ValidateSecurityChallenge
  attr_accessor :success
  attr_accessor :extensionPoint

  def initialize(success = nil, extensionPoint = nil)
    @success = success
    @extensionPoint = extensionPoint
  end
end

# {}WalletProvider
#   id - SOAP::SOAPString
#   name - SOAP::SOAPString
#   countries - Countries
#   logo - Logo
#   displayRank - SOAP::SOAPLong
#   preferredFlag - SOAP::SOAPBoolean
#   newFlag - SOAP::SOAPBoolean
#   lastUpdatedDate - SOAP::SOAPDateTime
#   lastTransactionDate - SOAP::SOAPDateTime
#   encryptedUserId - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
#   walletProviderUrl - SOAP::SOAPAnyURI
#   apiWallet - SOAP::SOAPBoolean
#   whiteLabelWallet - SOAP::SOAPBoolean
#   termsOfUseUrls - TermsOfUseUrls
#   privacyUrls - PrivacyUrls
#   cookieNoticeUrls - CookieNoticeUrls
#   checkoutUrl - SOAP::SOAPString
#   accountMaintenanceUrl - SOAP::SOAPString
#   addCardUrl - SOAP::SOAPString
#   addAddressUrl - SOAP::SOAPString
#   pairingUrl - SOAP::SOAPString
#   registrationUrl - SOAP::SOAPString
#   logoutUrl - SOAP::SOAPString
#   customerServicePhoneNumber - SOAP::SOAPString
#   connectEnabled - SOAP::SOAPBoolean
#   expressCheckoutEnabled - SOAP::SOAPBoolean
#   invitationCodeCountries - InvitationCodeCountries
#   pLDPWallet - SOAP::SOAPBoolean
#   mLDPWallet - SOAP::SOAPBoolean
#   lightboxEnabled - SOAP::SOAPBoolean
#   lightboxVersion - SOAP::SOAPLong
class WalletProvider
  attr_accessor :id
  attr_accessor :name
  attr_accessor :countries
  attr_accessor :logo
  attr_accessor :displayRank
  attr_accessor :preferredFlag
  attr_accessor :newFlag
  attr_accessor :lastUpdatedDate
  attr_accessor :lastTransactionDate
  attr_accessor :encryptedUserId
  attr_accessor :extensionPoint
  attr_accessor :walletProviderUrl
  attr_accessor :apiWallet
  attr_accessor :whiteLabelWallet
  attr_accessor :termsOfUseUrls
  attr_accessor :privacyUrls
  attr_accessor :cookieNoticeUrls
  attr_accessor :checkoutUrl
  attr_accessor :accountMaintenanceUrl
  attr_accessor :addCardUrl
  attr_accessor :addAddressUrl
  attr_accessor :pairingUrl
  attr_accessor :registrationUrl
  attr_accessor :logoutUrl
  attr_accessor :customerServicePhoneNumber
  attr_accessor :connectEnabled
  attr_accessor :expressCheckoutEnabled
  attr_accessor :invitationCodeCountries
  attr_accessor :pLDPWallet
  attr_accessor :mLDPWallet
  attr_accessor :lightboxEnabled
  attr_accessor :lightboxVersion

  def initialize(id = nil, name = nil, countries = nil, logo = nil, displayRank = nil, preferredFlag = nil, newFlag = nil, lastUpdatedDate = nil, lastTransactionDate = nil, encryptedUserId = nil, extensionPoint = nil, walletProviderUrl = nil, apiWallet = nil, whiteLabelWallet = nil, termsOfUseUrls = nil, privacyUrls = nil, cookieNoticeUrls = nil, checkoutUrl = nil, accountMaintenanceUrl = nil, addCardUrl = nil, addAddressUrl = nil, pairingUrl = nil, registrationUrl = nil, logoutUrl = nil, customerServicePhoneNumber = nil, connectEnabled = nil, expressCheckoutEnabled = nil, invitationCodeCountries = nil, pLDPWallet = nil, mLDPWallet = nil, lightboxEnabled = nil, lightboxVersion = nil)
    @id = id
    @name = name
    @countries = countries
    @logo = logo
    @displayRank = displayRank
    @preferredFlag = preferredFlag
    @newFlag = newFlag
    @lastUpdatedDate = lastUpdatedDate
    @lastTransactionDate = lastTransactionDate
    @encryptedUserId = encryptedUserId
    @extensionPoint = extensionPoint
    @walletProviderUrl = walletProviderUrl
    @apiWallet = apiWallet
    @whiteLabelWallet = whiteLabelWallet
    @termsOfUseUrls = termsOfUseUrls
    @privacyUrls = privacyUrls
    @cookieNoticeUrls = cookieNoticeUrls
    @checkoutUrl = checkoutUrl
    @accountMaintenanceUrl = accountMaintenanceUrl
    @addCardUrl = addCardUrl
    @addAddressUrl = addAddressUrl
    @pairingUrl = pairingUrl
    @registrationUrl = registrationUrl
    @logoutUrl = logoutUrl
    @customerServicePhoneNumber = customerServicePhoneNumber
    @connectEnabled = connectEnabled
    @expressCheckoutEnabled = expressCheckoutEnabled
    @invitationCodeCountries = invitationCodeCountries
    @pLDPWallet = pLDPWallet
    @mLDPWallet = mLDPWallet
    @lightboxEnabled = lightboxEnabled
    @lightboxVersion = lightboxVersion
  end
end

# {}Response
#   message - SOAP::SOAPString
#   errors - Errors
#   extensionPoint - ExtensionPoint
class Response
  attr_accessor :message
  attr_accessor :errors
  attr_accessor :extensionPoint

  def initialize(message = nil, errors = nil, extensionPoint = nil)
    @message = message
    @errors = errors
    @extensionPoint = extensionPoint
  end
end

# {}TransactionDetails
#   transactionId - SOAP::SOAPString
#   widgetCode - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class TransactionDetails
  attr_accessor :transactionId
  attr_accessor :widgetCode
  attr_accessor :extensionPoint

  def initialize(transactionId = nil, widgetCode = nil, extensionPoint = nil)
    @transactionId = transactionId
    @widgetCode = widgetCode
    @extensionPoint = extensionPoint
  end
end

# {}CheckoutSelection
#   shippingDestinationId - SOAP::SOAPLong
#   paymentCardId - SOAP::SOAPLong
#   loyaltyCardId - SOAP::SOAPLong
#   precheckoutTransactionId - SOAP::SOAPString
#   digitalGoods - SOAP::SOAPBoolean
#   merchantCheckoutId - SOAP::SOAPString
#   timeStamp - SOAP::SOAPDateTime
#   extensionPoint - ExtensionPoint
class CheckoutSelection
  attr_accessor :shippingDestinationId
  attr_accessor :paymentCardId
  attr_accessor :loyaltyCardId
  attr_accessor :precheckoutTransactionId
  attr_accessor :digitalGoods
  attr_accessor :merchantCheckoutId
  attr_accessor :timeStamp
  attr_accessor :extensionPoint

  def initialize(shippingDestinationId = nil, paymentCardId = nil, loyaltyCardId = nil, precheckoutTransactionId = nil, digitalGoods = nil, merchantCheckoutId = nil, timeStamp = nil, extensionPoint = nil)
    @shippingDestinationId = shippingDestinationId
    @paymentCardId = paymentCardId
    @loyaltyCardId = loyaltyCardId
    @precheckoutTransactionId = precheckoutTransactionId
    @digitalGoods = digitalGoods
    @merchantCheckoutId = merchantCheckoutId
    @timeStamp = timeStamp
    @extensionPoint = extensionPoint
  end
end

# {}CheckoutWrapper
#   checkout - Checkout
class CheckoutWrapper
  attr_accessor :checkout

  def initialize(checkout = nil)
    @checkout = checkout
  end
end

# {}ErrorWrapper
#   error - Error
class ErrorWrapper
  attr_accessor :error

  def initialize(error = nil)
    @error = error
  end
end

# {}LoyaltyBrandWrapper
#   loyaltyBrand - LoyaltyBrand
class LoyaltyBrandWrapper
  attr_accessor :loyaltyBrand

  def initialize(loyaltyBrand = nil)
    @loyaltyBrand = loyaltyBrand
  end
end

# {}LoyaltyCardWrapper
#   loyaltyCard - LoyaltyCard
class LoyaltyCardWrapper
  attr_accessor :loyaltyCard

  def initialize(loyaltyCard = nil)
    @loyaltyCard = loyaltyCard
  end
end

# {}MerchantWrapper
#   merchant - Merchant
class MerchantWrapper
  attr_accessor :merchant

  def initialize(merchant = nil)
    @merchant = merchant
  end
end

# {}NamePrefixWrapper
#   namePrefix - NamePrefix
class NamePrefixWrapper
  attr_accessor :namePrefix

  def initialize(namePrefix = nil)
    @namePrefix = namePrefix
  end
end

# {}PairingDataTypeWrapper
#   pairingDataType - PairingDataType
class PairingDataTypeWrapper
  attr_accessor :pairingDataType

  def initialize(pairingDataType = nil)
    @pairingDataType = pairingDataType
  end
end

# {}PaymentCardWrapper
#   paymentCard - PaymentCard
class PaymentCardWrapper
  attr_accessor :paymentCard

  def initialize(paymentCard = nil)
    @paymentCard = paymentCard
  end
end

# {}PersonalGreetingWrapper
#   personalGreeting - PersonalGreeting
class PersonalGreetingWrapper
  attr_accessor :personalGreeting

  def initialize(personalGreeting = nil)
    @personalGreeting = personalGreeting
  end
end

# {}ProfileWrapper
#   profile - Profile
class ProfileWrapper
  attr_accessor :profile

  def initialize(profile = nil)
    @profile = profile
  end
end

# {}ResponseWrapper
#   response - Response
class ResponseWrapper
  attr_accessor :response

  def initialize(response = nil)
    @response = response
  end
end

# {}SecurityChallengeWrapper
#   securityChallenge - SecurityChallenge
class SecurityChallengeWrapper
  attr_accessor :securityChallenge

  def initialize(securityChallenge = nil)
    @securityChallenge = securityChallenge
  end
end

# {}ShippingDestinationWrapper
#   shippingDestination - ShippingDestination
class ShippingDestinationWrapper
  attr_accessor :shippingDestination

  def initialize(shippingDestination = nil)
    @shippingDestination = shippingDestination
  end
end

# {}ValidateSecurityChallengeWrapper
#   validateSecurityChallenge - ValidateSecurityChallenge
class ValidateSecurityChallengeWrapper
  attr_accessor :validateSecurityChallenge

  def initialize(validateSecurityChallenge = nil)
    @validateSecurityChallenge = validateSecurityChallenge
  end
end

# {}WalletProviderWrapper
#   walletProvider - WalletProvider
class WalletProviderWrapper
  attr_accessor :walletProvider

  def initialize(walletProvider = nil)
    @walletProvider = walletProvider
  end
end

# {}WalletWrapper
#   wallet - Wallet
class WalletWrapper
  attr_accessor :wallet

  def initialize(wallet = nil)
    @wallet = wallet
  end
end

# {}Wallet
#   ref - SOAP::SOAPString
#   name - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class Wallet
  attr_accessor :ref
  attr_accessor :name
  attr_accessor :extensionPoint

  def initialize(ref = nil, name = nil, extensionPoint = nil)
    @ref = ref
    @name = name
    @extensionPoint = extensionPoint
  end
end

# {}Captcha
#   challenge - SOAP::SOAPString
#   response - SOAP::SOAPString
#   publicKey - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class Captcha
  attr_accessor :challenge
  attr_accessor :response
  attr_accessor :publicKey
  attr_accessor :extensionPoint

  def initialize(challenge = nil, response = nil, publicKey = nil, extensionPoint = nil)
    @challenge = challenge
    @response = response
    @publicKey = publicKey
    @extensionPoint = extensionPoint
  end
end

# {}Activity
#   date - SOAP::SOAPDateTime
#   expressCheckout - SOAP::SOAPString
#   pairing - SOAP::SOAPString
#   pairingDataType - PairingDataType
#   precheckoutDataType - PairingDataType
class Activity
  attr_accessor :date
  attr_accessor :expressCheckout
  attr_accessor :pairing
  attr_accessor :pairingDataType
  attr_accessor :precheckoutDataType

  def initialize(date = nil, expressCheckout = nil, pairing = nil, pairingDataType = nil, precheckoutDataType = nil)
    @date = date
    @expressCheckout = expressCheckout
    @pairing = pairing
    @pairingDataType = pairingDataType
    @precheckoutDataType = precheckoutDataType
  end
end

# {}MerchantInfoList
class MerchantInfoList < ::Array
end

# {}MerchantInfo
#   name - SOAP::SOAPString
#   id - SOAP::SOAPString
#   type - SOAP::SOAPString
#   activityList - ActivityList
class MerchantInfo
  attr_accessor :name
  attr_accessor :id
  attr_accessor :type
  attr_accessor :activityList

  def initialize(name = nil, id = nil, type = nil, activityList = nil)
    @name = name
    @id = id
    @type = type
    @activityList = activityList
  end
end

# {}ActivityList
class ActivityList < ::Array
end
#
# # {}Gender
# class Gender < ::String
#   F = new("F")
#   M = new("M")
# end
#
# # {}TransactionStatus
# class TransactionStatus < ::String
#   Failure = new("Failure")
#   Success = new("Success")
# end