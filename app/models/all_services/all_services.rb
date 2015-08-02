# require 'v_2_mapper'
# mapper = V_2Mapper.new
# obj = CheckoutShoppingCart.new
# obj.shopping_cart = ShoppingCart.new
# puts mapper.obj2xml(obj)
# p mapper.xml2obj(mapper.obj2xml(obj))

require 'xsd/qname'

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

# {}Address
#   city - (any)
#   country - (any)
#   countrySubdivision - (any)
#   line1 - (any)
#   line2 - (any)
#   line3 - (any)
#   postalCode - (any)
class Address
  attr_accessor :city
  attr_accessor :country
  attr_accessor :countrySubdivision
  attr_accessor :line1
  attr_accessor :line2
  attr_accessor :line3
  attr_accessor :postalCode

  def initialize(city = nil, country = nil, countrySubdivision = nil, line1 = nil, line2 = nil, line3 = nil, postalCode = nil)
    @city = city
    @country = country
    @countrySubdivision = countrySubdivision
    @line1 = line1
    @line2 = line2
    @line3 = line3
    @postalCode = postalCode
  end
end

# {}ShippingAddress
#   city - (any)
#   country - (any)
#   countrySubdivision - (any)
#   line1 - (any)
#   line2 - (any)
#   line3 - (any)
#   postalCode - (any)
#   recipientName - (any)
#   recipientPhoneNumber - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class ShippingAddress < Address
  attr_accessor :city
  attr_accessor :country
  attr_accessor :countrySubdivision
  attr_accessor :line1
  attr_accessor :line2
  attr_accessor :line3
  attr_accessor :postalCode
  attr_accessor :recipientName
  attr_accessor :recipientPhoneNumber
  attr_accessor :extensionPoint

  def initialize(city = nil, country = nil, countrySubdivision = nil, line1 = nil, line2 = nil, line3 = nil, postalCode = nil, recipientName = nil, recipientPhoneNumber = nil, extensionPoint = nil)
    @city = city
    @country = country
    @countrySubdivision = countrySubdivision
    @line1 = line1
    @line2 = line2
    @line3 = line3
    @postalCode = postalCode
    @recipientName = recipientName
    @recipientPhoneNumber = recipientPhoneNumber
    @extensionPoint = extensionPoint
  end
end

# {}PrecheckoutShippingAddress
#   city - (any)
#   country - (any)
#   countrySubdivision - (any)
#   line1 - (any)
#   line2 - (any)
#   line3 - (any)
#   postalCode - (any)
#   recipientName - SOAP::SOAPString
#   recipientPhoneNumber - SOAP::SOAPString
#   addressId - SOAP::SOAPString
#   selectedAsDefault - SOAP::SOAPBoolean
#   shippingAlias - SOAP::SOAPString
class PrecheckoutShippingAddress < Address
  attr_accessor :city
  attr_accessor :country
  attr_accessor :countrySubdivision
  attr_accessor :line1
  attr_accessor :line2
  attr_accessor :line3
  attr_accessor :postalCode
  attr_accessor :recipientName
  attr_accessor :recipientPhoneNumber
  attr_accessor :addressId
  attr_accessor :selectedAsDefault
  attr_accessor :shippingAlias

  def initialize(city = nil, country = nil, countrySubdivision = nil, line1 = nil, line2 = nil, line3 = nil, postalCode = nil, recipientName = nil, recipientPhoneNumber = nil, addressId = nil, selectedAsDefault = nil, shippingAlias = nil)
    @city = city
    @country = country
    @countrySubdivision = countrySubdivision
    @line1 = line1
    @line2 = line2
    @line3 = line3
    @postalCode = postalCode
    @recipientName = recipientName
    @recipientPhoneNumber = recipientPhoneNumber
    @addressId = addressId
    @selectedAsDefault = selectedAsDefault
    @shippingAlias = shippingAlias
  end
end

# {}AuthenticationOptions
#   authenticateMethod - SOAP::SOAPString
#   cardEnrollmentMethod - SOAP::SOAPString
#   cAvv - SOAP::SOAPString
#   eciFlag - SOAP::SOAPString
#   masterCardAssignedID - SOAP::SOAPString
#   paResStatus - SOAP::SOAPString
#   sCEnrollmentStatus - SOAP::SOAPString
#   signatureVerification - SOAP::SOAPString
#   xid - SOAP::SOAPString
class AuthenticationOptions
  attr_accessor :authenticateMethod
  attr_accessor :cardEnrollmentMethod
  attr_accessor :cAvv
  attr_accessor :eciFlag
  attr_accessor :masterCardAssignedID
  attr_accessor :paResStatus
  attr_accessor :sCEnrollmentStatus
  attr_accessor :signatureVerification
  attr_accessor :xid

  def initialize(authenticateMethod = nil, cardEnrollmentMethod = nil, cAvv = nil, eciFlag = nil, masterCardAssignedID = nil, paResStatus = nil, sCEnrollmentStatus = nil, signatureVerification = nil, xid = nil)
    @authenticateMethod = authenticateMethod
    @cardEnrollmentMethod = cardEnrollmentMethod
    @cAvv = cAvv
    @eciFlag = eciFlag
    @masterCardAssignedID = masterCardAssignedID
    @paResStatus = paResStatus
    @sCEnrollmentStatus = sCEnrollmentStatus
    @signatureVerification = signatureVerification
    @xid = xid
  end
end

# {}AuthorizeCheckoutRequest
#   oAuthToken - SOAP::SOAPString
#   authorizedCheckout - AuthorizedCheckout
#   errors - Errors
#   preCheckoutTransactionId - SOAP::SOAPString
#   merchantParameterId - SOAP::SOAPString
#   deviceType - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class AuthorizeCheckoutRequest
  attr_accessor :oAuthToken
  attr_accessor :authorizedCheckout
  attr_accessor :errors
  attr_accessor :preCheckoutTransactionId
  attr_accessor :merchantParameterId
  attr_accessor :deviceType
  attr_accessor :extensionPoint

  def initialize(oAuthToken = nil, authorizedCheckout = nil, errors = nil, preCheckoutTransactionId = nil, merchantParameterId = nil, deviceType = nil, extensionPoint = nil)
    @oAuthToken = oAuthToken
    @authorizedCheckout = authorizedCheckout
    @errors = errors
    @preCheckoutTransactionId = preCheckoutTransactionId
    @merchantParameterId = merchantParameterId
    @deviceType = deviceType
    @extensionPoint = extensionPoint
  end
end

# {}AuthorizedCheckout
#   card - Card
#   contact - Contact
#   shippingAddress - ShippingAddress
#   authenticationOptions - AuthenticationOptions
#   rewardProgram - RewardProgram
#   extensionPoint - ExtensionPoint
class AuthorizedCheckout
  attr_accessor :card
  attr_accessor :contact
  attr_accessor :shippingAddress
  attr_accessor :authenticationOptions
  attr_accessor :rewardProgram
  attr_accessor :extensionPoint

  def initialize(card = nil, contact = nil, shippingAddress = nil, authenticationOptions = nil, rewardProgram = nil, extensionPoint = nil)
    @card = card
    @contact = contact
    @shippingAddress = shippingAddress
    @authenticationOptions = authenticationOptions
    @rewardProgram = rewardProgram
    @extensionPoint = extensionPoint
  end
end

# {}AuthorizeExpressCheckoutRequest
#   preCheckoutTransactionId - SOAP::SOAPString
#   currencyCode - SOAP::SOAPString
#   orderAmount - SOAP::SOAPLong
#   merchantParameterId - SOAP::SOAPString
#   oAuthToken - SOAP::SOAPString
#   errors - Errors
#   authorizedExpressCheckout - AuthorizedCheckout
#   deviceType - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class AuthorizeExpressCheckoutRequest
  attr_accessor :preCheckoutTransactionId
  attr_accessor :currencyCode
  attr_accessor :orderAmount
  attr_accessor :merchantParameterId
  attr_accessor :oAuthToken
  attr_accessor :errors
  attr_accessor :authorizedExpressCheckout
  attr_accessor :deviceType
  attr_accessor :extensionPoint

  def initialize(preCheckoutTransactionId = nil, currencyCode = nil, orderAmount = nil, merchantParameterId = nil, oAuthToken = nil, errors = nil, authorizedExpressCheckout = nil, deviceType = nil, extensionPoint = nil)
    @preCheckoutTransactionId = preCheckoutTransactionId
    @currencyCode = currencyCode
    @orderAmount = orderAmount
    @merchantParameterId = merchantParameterId
    @oAuthToken = oAuthToken
    @errors = errors
    @authorizedExpressCheckout = authorizedExpressCheckout
    @deviceType = deviceType
    @extensionPoint = extensionPoint
  end
end

# {}Card
#   brandId - (any)
#   brandName - (any)
#   accountNumber - (any)
#   billingAddress - Address
#   cardHolderName - (any)
#   expiryMonth - (any)
#   expiryYear - (any)
#   extensionPoint - ExtensionPoint
class Card
  attr_accessor :brandId
  attr_accessor :brandName
  attr_accessor :accountNumber
  attr_accessor :billingAddress
  attr_accessor :cardHolderName
  attr_accessor :expiryMonth
  attr_accessor :expiryYear
  attr_accessor :extensionPoint

  def initialize(brandId = nil, brandName = nil, accountNumber = nil, billingAddress = nil, cardHolderName = nil, expiryMonth = nil, expiryYear = nil, extensionPoint = nil)
    @brandId = brandId
    @brandName = brandName
    @accountNumber = accountNumber
    @billingAddress = billingAddress
    @cardHolderName = cardHolderName
    @expiryMonth = expiryMonth
    @expiryYear = expiryYear
    @extensionPoint = extensionPoint
  end
end

# {}Contact
#   firstName - (any)
#   middleName - SOAP::SOAPString
#   lastName - (any)
#   gender - Gender
#   dateOfBirth - DateOfBirth
#   nationalID - SOAP::SOAPString
#   country - (any)
#   emailAddress - (any)
#   phoneNumber - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class Contact
  attr_accessor :firstName
  attr_accessor :middleName
  attr_accessor :lastName
  attr_accessor :gender
  attr_accessor :dateOfBirth
  attr_accessor :nationalID
  attr_accessor :country
  attr_accessor :emailAddress
  attr_accessor :phoneNumber
  attr_accessor :extensionPoint

  def initialize(firstName = nil, middleName = nil, lastName = nil, gender = nil, dateOfBirth = nil, nationalID = nil, country = nil, emailAddress = nil, phoneNumber = nil, extensionPoint = nil)
    @firstName = firstName
    @middleName = middleName
    @lastName = lastName
    @gender = gender
    @dateOfBirth = dateOfBirth
    @nationalID = nationalID
    @country = country
    @emailAddress = emailAddress
    @phoneNumber = phoneNumber
    @extensionPoint = extensionPoint
  end
end

# {}DateOfBirth
#   year - SOAP::SOAPInt
#   month - (any)
#   day - SOAP::SOAPInt
class DateOfBirth
  attr_accessor :year
  attr_accessor :month
  attr_accessor :day

  def initialize(year = nil, month = nil, day = nil)
    @year = year
    @month = month
    @day = day
  end
end

# {}RewardProgram
#   rewardNumber - SOAP::SOAPString
#   rewardId - SOAP::SOAPString
#   rewardName - SOAP::SOAPString
#   expiryMonth - (any)
#   expiryYear - (any)
#   extensionPoint - ExtensionPoint
class RewardProgram
  include MasterpassMappable
  attr_accessor :rewardNumber
  attr_accessor :rewardId
  attr_accessor :rewardName
  attr_accessor :expiryMonth
  attr_accessor :expiryYear
  attr_accessor :extensionPoint

  def initialize(rewardNumber = nil, rewardId = nil, rewardName = nil, expiryMonth = nil, expiryYear = nil, extensionPoint = nil)
    @rewardNumber = rewardNumber
    @rewardId = rewardId
    @rewardName = rewardName
    @expiryMonth = expiryMonth
    @expiryYear = expiryYear
    @extensionPoint = extensionPoint
  end
end

# {}AuthorizeCheckoutResponse
#   merchantCallbackURL - SOAP::SOAPString
#   stepupPending - SOAP::SOAPBoolean
#   oAuthVerifier - SOAP::SOAPString
#   preCheckoutTransactionId - SOAP::SOAPString
class AuthorizeCheckoutResponse
  attr_accessor :merchantCallbackURL
  attr_accessor :stepupPending
  attr_accessor :oAuthVerifier
  attr_accessor :preCheckoutTransactionId

  def initialize(merchantCallbackURL = nil, stepupPending = nil, oAuthVerifier = nil, preCheckoutTransactionId = nil)
    @merchantCallbackURL = merchantCallbackURL
    @stepupPending = stepupPending
    @oAuthVerifier = oAuthVerifier
    @preCheckoutTransactionId = preCheckoutTransactionId
  end
end

# {}AuthorizeExpressCheckoutResponse
#   status - SOAP::SOAPString
class AuthorizeExpressCheckoutResponse
  attr_accessor :status

  def initialize(status = nil)
    @status = status
  end
end

# {}Checkout
#   card - Card
#   transactionId - SOAP::SOAPString
#   contact - Contact
#   shippingAddress - ShippingAddress
#   authenticationOptions - AuthenticationOptions
#   rewardProgram - RewardProgram
#   walletID - SOAP::SOAPString
#   preCheckoutTransactionId - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class Checkout
  include MasterpassMappable
  attr_accessor :card
  attr_accessor :transactionId
  attr_accessor :contact
  attr_accessor :shippingAddress
  attr_accessor :authenticationOptions
  attr_accessor :rewardProgram
  attr_accessor :walletID
  attr_accessor :preCheckoutTransactionId
  attr_accessor :extensionPoint

  def initialize(card = nil, transactionId = nil, contact = nil, shippingAddress = nil, authenticationOptions = nil, rewardProgram = nil, walletID = nil, preCheckoutTransactionId = nil, extensionPoint = nil)
    @card = card
    @transactionId = transactionId
    @contact = contact
    @shippingAddress = shippingAddress
    @authenticationOptions = authenticationOptions
    @rewardProgram = rewardProgram
    @walletID = walletID
    @preCheckoutTransactionId = preCheckoutTransactionId
    @extensionPoint = extensionPoint
  end
end

# {}Error
#   description - SOAP::SOAPString
#   reasonCode - SOAP::SOAPString
#   recoverable - SOAP::SOAPBoolean
#   source - SOAP::SOAPString
#   details - Details
class Error
  include MasterpassMappable
  attr_accessor :description
  attr_accessor :reasonCode
  attr_accessor :recoverable
  attr_accessor :source
  attr_accessor :details

  def initialize(description = nil, reasonCode = nil, recoverable = nil, source = nil, details = nil)
    @description = description
    @reasonCode = reasonCode
    @recoverable = recoverable
    @source = source
    @details = details
  end
end

# {}Errors
class Errors < ::Array
end

# {}Details
class Details < ::Array
end

# {}Detail
#   name - SOAP::SOAPString
#   value - SOAP::SOAPString
class Detail
  attr_accessor :name
  attr_accessor :value

  def initialize(name = nil, value = nil)
    @name = name
    @value = value
  end
end

# {}MerchantTransaction
#   transactionId - SOAP::SOAPString
#   consumerKey - SOAP::SOAPString
#   currency - SOAP::SOAPString
#   orderAmount - SOAP::SOAPLong
#   purchaseDate - SOAP::SOAPDateTime
#   transactionStatus - TransactionStatus
#   approvalCode - SOAP::SOAPString
#   preCheckoutTransactionId - SOAP::SOAPString
#   expressCheckoutIndicator - SOAP::SOAPBoolean
#   extensionPoint - ExtensionPoint
class MerchantTransaction
  include MasterpassMappable
  attr_accessor :transactionId
  attr_accessor :consumerKey
  attr_accessor :currency
  attr_accessor :orderAmount
  attr_accessor :purchaseDate
  attr_accessor :transactionStatus
  attr_accessor :approvalCode
  attr_accessor :preCheckoutTransactionId
  attr_accessor :expressCheckoutIndicator
  attr_accessor :extensionPoint

  def initialize(transactionId = nil, consumerKey = nil, currency = nil, orderAmount = nil, purchaseDate = nil, transactionStatus = nil, approvalCode = nil, preCheckoutTransactionId = nil, expressCheckoutIndicator = nil, extensionPoint = nil)
    @transactionId = transactionId
    @consumerKey = consumerKey
    @currency = currency
    @orderAmount = orderAmount
    @purchaseDate = purchaseDate
    @transactionStatus = transactionStatus
    @approvalCode = approvalCode
    @preCheckoutTransactionId = preCheckoutTransactionId
    @expressCheckoutIndicator = expressCheckoutIndicator
    @extensionPoint = extensionPoint
  end
end

# {}MerchantTransactions
class MerchantTransactions < ::Array
include MasterpassMappable
end

# {}ShippingAddressVerificationRequest
#   oAuthToken - SOAP::SOAPString
#   verifiableAddresses - VerifiableAddresses
#   shippingLocationProfileName - SOAP::SOAPString
class ShippingAddressVerificationRequest
  attr_accessor :oAuthToken
  attr_accessor :verifiableAddresses
  attr_accessor :shippingLocationProfileName

  def initialize(oAuthToken = nil, verifiableAddresses = nil, shippingLocationProfileName = nil)
    @oAuthToken = oAuthToken
    @verifiableAddresses = verifiableAddresses
    @shippingLocationProfileName = shippingLocationProfileName
  end
end

# {}VerifiableAddresses
class VerifiableAddresses < ::Array
end

# {}VerifiableAddress
#   country - SOAP::SOAPString
#   countrySubdivision - SOAP::SOAPString
class VerifiableAddress
  attr_accessor :country
  attr_accessor :countrySubdivision

  def initialize(country = nil, countrySubdivision = nil)
    @country = country
    @countrySubdivision = countrySubdivision
  end
end

# {}ShippingAddressVerificationResponse
#   oAuthToken - SOAP::SOAPString
#   verificationResults - VerificationResults
class ShippingAddressVerificationResponse
  attr_accessor :oAuthToken
  attr_accessor :verificationResults

  def initialize(oAuthToken = nil, verificationResults = nil)
    @oAuthToken = oAuthToken
    @verificationResults = verificationResults
  end
end

# {}VerificationResults
class VerificationResults < ::Array
end

# {}VerificationResult
#   country - SOAP::SOAPString
#   countrySubdivision - SOAP::SOAPString
#   accepted - SOAP::SOAPBoolean
class VerificationResult
  attr_accessor :country
  attr_accessor :countrySubdivision
  attr_accessor :accepted

  def initialize(country = nil, countrySubdivision = nil, accepted = nil)
    @country = country
    @countrySubdivision = countrySubdivision
    @accepted = accepted
  end
end

# {}ShoppingCart
#   currencyCode - SOAP::SOAPString
#   subtotal - SOAP::SOAPLong
#   shoppingCartItem - ShoppingCartItem
#   extensionPoint - ExtensionPoint
class ShoppingCart
  attr_accessor :currencyCode
  attr_accessor :subtotal
  attr_accessor :shoppingCartItem
  attr_accessor :extensionPoint

  def initialize(currencyCode = nil, subtotal = nil, shoppingCartItem = [], extensionPoint = nil)
    @currencyCode = currencyCode
    @subtotal = subtotal
    @shoppingCartItem = shoppingCartItem
    @extensionPoint = extensionPoint
  end
end

# {}ShoppingCartItem
#   description - SOAP::SOAPString
#   quantity - SOAP::SOAPLong
#   value - SOAP::SOAPLong
#   imageURL - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class ShoppingCartItem
  include MasterpassMappable
  attr_accessor :description
  attr_accessor :quantity
  attr_accessor :value
  attr_accessor :imageURL
  attr_accessor :extensionPoint

  def initialize(description = nil, quantity = nil, value = nil, imageURL = nil, extensionPoint = nil)
    @description = description
    @quantity = quantity
    @value = value
    @imageURL = imageURL
    @extensionPoint = extensionPoint
  end
end

# {}ShoppingCartRequest
#   oAuthToken - SOAP::SOAPString
#   shoppingCart - ShoppingCart
#   originUrl - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class ShoppingCartRequest
  include MasterpassMappable
  attr_accessor :oAuthToken
  attr_accessor :shoppingCart
  attr_accessor :originUrl
  attr_accessor :extensionPoint

  def initialize(oAuthToken = nil, shoppingCart = nil, originUrl = nil, extensionPoint = nil)
    @oAuthToken = oAuthToken
    @shoppingCart = shoppingCart
    @originUrl = originUrl
    @extensionPoint = extensionPoint
  end
end

# {}ShoppingCartResponse
#   oAuthToken - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class ShoppingCartResponse
  attr_accessor :oAuthToken
  attr_accessor :extensionPoint
  include MasterpassMappable
  def initialize(oAuthToken = nil, extensionPoint = nil)
    @oAuthToken = oAuthToken
    @extensionPoint = extensionPoint
  end
end

# {}Response
#   message - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class Response
  attr_accessor :message
  attr_accessor :extensionPoint

  def initialize(message = nil, extensionPoint = nil)
    @message = message
    @extensionPoint = extensionPoint
  end
end

# {}ExpressCheckoutRequest
#   merchantCheckoutId - SOAP::SOAPString
#   precheckoutTransactionId - SOAP::SOAPString
#   currencyCode - SOAP::SOAPString
#   orderAmount - SOAP::SOAPLong
#   cardId - SOAP::SOAPString
#   shippingAddressId - SOAP::SOAPString
#   rewardProgramId - SOAP::SOAPString
#   walletId - SOAP::SOAPString
#   advancedCheckoutOverride - SOAP::SOAPBoolean
#   originUrl - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class ExpressCheckoutRequest
  include MasterpassMappable
  
  attr_accessor :merchantCheckoutId
  attr_accessor :precheckoutTransactionId
  attr_accessor :currencyCode
  attr_accessor :orderAmount
  attr_accessor :cardId
  attr_accessor :shippingAddressId
  attr_accessor :rewardProgramId
  attr_accessor :walletId
  attr_accessor :advancedCheckoutOverride
  attr_accessor :originUrl
  attr_accessor :extensionPoint

  def initialize(merchantCheckoutId = nil, precheckoutTransactionId = nil, currencyCode = nil, orderAmount = nil, cardId = nil, shippingAddressId = nil, rewardProgramId = nil, walletId = nil, advancedCheckoutOverride = nil, originUrl = nil, extensionPoint = nil)
    @merchantCheckoutId = merchantCheckoutId
    @precheckoutTransactionId = precheckoutTransactionId
    @currencyCode = currencyCode
    @orderAmount = orderAmount
    @cardId = cardId
    @shippingAddressId = shippingAddressId
    @rewardProgramId = rewardProgramId
    @walletId = walletId
    @advancedCheckoutOverride = advancedCheckoutOverride
    @originUrl = originUrl
    @extensionPoint = extensionPoint
  end
end

# {}ExpressCheckoutResponse
#   checkout - Checkout
#   longAccessToken - SOAP::SOAPString
#   errors - Errors
#   extensionPoint - ExtensionPoint
class ExpressCheckoutResponse
  include MasterpassMappable
  
  attr_accessor :checkout
  attr_accessor :longAccessToken
  attr_accessor :errors
  attr_accessor :extensionPoint

  def initialize(checkout = nil, longAccessToken = nil, errors = nil, extensionPoint = nil)
    @checkout = checkout
    @longAccessToken = longAccessToken
    @errors = errors
    @extensionPoint = extensionPoint
  end
end

# {}PrecheckoutDataRequest
#   pairingDataTypes - PairingDataTypes
#   extensionPoint - ExtensionPoint
class PrecheckoutDataRequest
  include MasterpassMappable
  attr_accessor :pairingDataTypes
  attr_accessor :extensionPoint

  def initialize(pairingDataTypes = nil, extensionPoint = nil)
    @pairingDataTypes = pairingDataTypes
    @extensionPoint = extensionPoint
  end
end

# {}PrecheckoutDataResponse
#   precheckoutData - PrecheckoutData
#   walletPartnerLogoUrl - SOAP::SOAPAnyURI
#   masterpassLogoUrl - SOAP::SOAPAnyURI
#   longAccessToken - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class PrecheckoutDataResponse
  include MasterpassMappable
  attr_accessor :precheckoutData
  attr_accessor :walletPartnerLogoUrl
  attr_accessor :masterpassLogoUrl
  attr_accessor :longAccessToken
  attr_accessor :extensionPoint

  def initialize(precheckoutData = nil, walletPartnerLogoUrl = nil, masterpassLogoUrl = nil, longAccessToken = nil, extensionPoint = nil)
    @precheckoutData = precheckoutData
    @walletPartnerLogoUrl = walletPartnerLogoUrl
    @masterpassLogoUrl = masterpassLogoUrl
    @longAccessToken = longAccessToken
    @extensionPoint = extensionPoint
  end
end

# {}PrecheckoutCards
class PrecheckoutCards < ::Array
end

# {}PrecheckoutShippingAddresses
class PrecheckoutShippingAddresses < ::Array
end

# {}PrecheckoutRewardPrograms
class PrecheckoutRewardPrograms < ::Array
end

# {}PrecheckoutData
#   cards - PrecheckoutCards
#   contact - Contact
#   shippingAddresses - PrecheckoutShippingAddresses
#   rewardPrograms - PrecheckoutRewardPrograms
#   walletName - SOAP::SOAPString
#   precheckoutTransactionId - SOAP::SOAPString
#   consumerWalletId - SOAP::SOAPString
#   errors - Errors
#   extensionPoint - ExtensionPoint
class PrecheckoutData
  include MasterpassMappable
  attr_accessor :cards
  attr_accessor :contact
  attr_accessor :shippingAddresses
  attr_accessor :rewardPrograms
  attr_accessor :walletName
  attr_accessor :precheckoutTransactionId
  attr_accessor :consumerWalletId
  attr_accessor :errors
  attr_accessor :extensionPoint

  def initialize(cards = nil, contact = nil, shippingAddresses = nil, rewardPrograms = nil, walletName = nil, precheckoutTransactionId = nil, consumerWalletId = nil, errors = nil, extensionPoint = nil)
    @cards = cards
    @contact = contact
    @shippingAddresses = shippingAddresses
    @rewardPrograms = rewardPrograms
    @walletName = walletName
    @precheckoutTransactionId = precheckoutTransactionId
    @consumerWalletId = consumerWalletId
    @errors = errors
    @extensionPoint = extensionPoint
  end
end

# {}AuthorizePrecheckoutRequest
#   precheckoutData - PrecheckoutData
#   extensionPoint - ExtensionPoint
class AuthorizePrecheckoutRequest
  attr_accessor :precheckoutData
  attr_accessor :extensionPoint

  def initialize(precheckoutData = nil, extensionPoint = nil)
    @precheckoutData = precheckoutData
    @extensionPoint = extensionPoint
  end
end

# {}AuthorizePrecheckoutResponse
#   status - SOAP::SOAPString
#   extensionPoint - ExtensionPoint
class AuthorizePrecheckoutResponse
  attr_accessor :status
  attr_accessor :extensionPoint

  def initialize(status = nil, extensionPoint = nil)
    @status = status
    @extensionPoint = extensionPoint
  end
end

# {}PrecheckoutCard
#   brandId - SOAP::SOAPString
#   brandName - SOAP::SOAPString
#   billingAddress - Address
#   cardHolderName - SOAP::SOAPString
#   expiryMonth - (any)
#   expiryYear - (any)
#   cardId - SOAP::SOAPString
#   lastFour - SOAP::SOAPString
#   cardAlias - SOAP::SOAPString
#   selectedAsDefault - SOAP::SOAPBoolean
class PrecheckoutCard
  attr_accessor :brandId
  attr_accessor :brandName
  attr_accessor :billingAddress
  attr_accessor :cardHolderName
  attr_accessor :expiryMonth
  attr_accessor :expiryYear
  attr_accessor :cardId
  attr_accessor :lastFour
  attr_accessor :cardAlias
  attr_accessor :selectedAsDefault

  def initialize(brandId = nil, brandName = nil, billingAddress = nil, cardHolderName = nil, expiryMonth = nil, expiryYear = nil, cardId = nil, lastFour = nil, cardAlias = nil, selectedAsDefault = nil)
    @brandId = brandId
    @brandName = brandName
    @billingAddress = billingAddress
    @cardHolderName = cardHolderName
    @expiryMonth = expiryMonth
    @expiryYear = expiryYear
    @cardId = cardId
    @lastFour = lastFour
    @cardAlias = cardAlias
    @selectedAsDefault = selectedAsDefault
  end
end

# {}PrecheckoutRewardProgram
#   rewardNumber - SOAP::SOAPString
#   rewardId - SOAP::SOAPString
#   rewardName - SOAP::SOAPString
#   expiryMonth - (any)
#   expiryYear - (any)
#   rewardProgramId - SOAP::SOAPString
#   rewardLogoUrl - SOAP::SOAPString
class PrecheckoutRewardProgram
  attr_accessor :rewardNumber
  attr_accessor :rewardId
  attr_accessor :rewardName
  attr_accessor :expiryMonth
  attr_accessor :expiryYear
  attr_accessor :rewardProgramId
  attr_accessor :rewardLogoUrl

  def initialize(rewardNumber = nil, rewardId = nil, rewardName = nil, expiryMonth = nil, expiryYear = nil, rewardProgramId = nil, rewardLogoUrl = nil)
    @rewardNumber = rewardNumber
    @rewardId = rewardId
    @rewardName = rewardName
    @expiryMonth = expiryMonth
    @expiryYear = expiryYear
    @rewardProgramId = rewardProgramId
    @rewardLogoUrl = rewardLogoUrl
  end
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

# {}Gender
class Gender < ::String
  F = new("F")
  M = new("M")
end

# {}TransactionStatus
class TransactionStatus < ::String
  Failure = new("Failure")
  Success = new("Success")
end
