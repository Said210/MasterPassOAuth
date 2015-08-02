require 'xsd/mapping'
require 'all_services.rb'

module AllServicesMappingRegistry
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"
  Registry = ::SOAP::Mapping::LiteralRegistry.new

  Registry.register(
    :class => ExtensionPoint,
    :schema_type => XSD::QName.new(nil, "ExtensionPoint"),
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  Registry.register(
    :class => Address,
    :schema_type => XSD::QName.new(nil, "Address"),
    :schema_element => [
      ["city", [nil, XSD::QName.new(nil, "City")]],
      ["country", [nil, XSD::QName.new(nil, "Country")]],
      ["countrySubdivision", [nil, XSD::QName.new(nil, "CountrySubdivision")], [0, 1]],
      ["line1", [nil, XSD::QName.new(nil, "Line1")]],
      ["line2", [nil, XSD::QName.new(nil, "Line2")], [0, 1]],
      ["line3", [nil, XSD::QName.new(nil, "Line3")], [0, 1]],
      ["postalCode", [nil, XSD::QName.new(nil, "PostalCode")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthenticationOptions,
    :schema_type => XSD::QName.new(nil, "AuthenticationOptions"),
    :schema_element => [
      ["authenticateMethod", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthenticateMethod")], [0, 1]],
      ["cardEnrollmentMethod", ["SOAP::SOAPString", XSD::QName.new(nil, "CardEnrollmentMethod")], [0, 1]],
      ["cAvv", ["SOAP::SOAPString", XSD::QName.new(nil, "CAvv")], [0, 1]],
      ["eciFlag", ["SOAP::SOAPString", XSD::QName.new(nil, "EciFlag")], [0, 1]],
      ["masterCardAssignedID", ["SOAP::SOAPString", XSD::QName.new(nil, "MasterCardAssignedID")], [0, 1]],
      ["paResStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "PaResStatus")], [0, 1]],
      ["sCEnrollmentStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "SCEnrollmentStatus")], [0, 1]],
      ["signatureVerification", ["SOAP::SOAPString", XSD::QName.new(nil, "SignatureVerification")], [0, 1]],
      ["xid", ["SOAP::SOAPString", XSD::QName.new(nil, "Xid")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizeCheckoutRequest,
    :schema_type => XSD::QName.new(nil, "AuthorizeCheckoutRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["authorizedCheckout", ["AuthorizedCheckout", XSD::QName.new(nil, "AuthorizedCheckout")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]],
      ["merchantParameterId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantParameterId")], [0, 1]],
      ["deviceType", ["SOAP::SOAPString", XSD::QName.new(nil, "DeviceType")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizedCheckout,
    :schema_type => XSD::QName.new(nil, "AuthorizedCheckout"),
    :schema_element => [
      ["card", ["Card", XSD::QName.new(nil, "Card")]],
      ["contact", ["Contact", XSD::QName.new(nil, "Contact")]],
      ["shippingAddress", ["ShippingAddress", XSD::QName.new(nil, "ShippingAddress")], [0, 1]],
      ["authenticationOptions", ["AuthenticationOptions", XSD::QName.new(nil, "AuthenticationOptions")], [0, 1]],
      ["rewardProgram", ["RewardProgram", XSD::QName.new(nil, "RewardProgram")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizeExpressCheckoutRequest,
    :schema_type => XSD::QName.new(nil, "AuthorizeExpressCheckoutRequest"),
    :schema_element => [
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CurrencyCode")]],
      ["orderAmount", ["SOAP::SOAPLong", XSD::QName.new(nil, "OrderAmount")]],
      ["merchantParameterId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantParameterId")]],
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["authorizedExpressCheckout", ["AuthorizedCheckout", XSD::QName.new(nil, "AuthorizedExpressCheckout")]],
      ["deviceType", ["SOAP::SOAPString", XSD::QName.new(nil, "DeviceType")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Card,
    :schema_type => XSD::QName.new(nil, "Card"),
    :schema_element => [
      ["brandId", [nil, XSD::QName.new(nil, "BrandId")]],
      ["brandName", [nil, XSD::QName.new(nil, "BrandName")]],
      ["accountNumber", [nil, XSD::QName.new(nil, "AccountNumber")]],
      ["billingAddress", ["Address", XSD::QName.new(nil, "BillingAddress")]],
      ["cardHolderName", [nil, XSD::QName.new(nil, "CardHolderName")]],
      ["expiryMonth", [nil, XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", [nil, XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Contact,
    :schema_type => XSD::QName.new(nil, "Contact"),
    :schema_element => [
      ["firstName", [nil, XSD::QName.new(nil, "FirstName")]],
      ["middleName", ["SOAP::SOAPString", XSD::QName.new(nil, "MiddleName")], [0, 1]],
      ["lastName", [nil, XSD::QName.new(nil, "LastName")]],
      ["gender", ["Gender", XSD::QName.new(nil, "Gender")], [0, 1]],
      ["dateOfBirth", ["DateOfBirth", XSD::QName.new(nil, "DateOfBirth")], [0, 1]],
      ["nationalID", ["SOAP::SOAPString", XSD::QName.new(nil, "NationalID")], [0, 1]],
      ["country", [nil, XSD::QName.new(nil, "Country")]],
      ["emailAddress", [nil, XSD::QName.new(nil, "EmailAddress")]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "PhoneNumber")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => DateOfBirth,
    :schema_type => XSD::QName.new(nil, "DateOfBirth"),
    :schema_element => [
      ["year", ["SOAP::SOAPInt", XSD::QName.new(nil, "Year")]],
      ["month", [nil, XSD::QName.new(nil, "Month")]],
      ["day", ["SOAP::SOAPInt", XSD::QName.new(nil, "Day")]]
    ]
  )

  Registry.register(
    :class => ShippingAddress,
    :schema_type => XSD::QName.new(nil, "ShippingAddress"),
    :schema_basetype => XSD::QName.new(nil, "Address"),
    :schema_element => [
      ["city", [nil, XSD::QName.new(nil, "City")]],
      ["country", [nil, XSD::QName.new(nil, "Country")]],
      ["countrySubdivision", [nil, XSD::QName.new(nil, "CountrySubdivision")], [0, 1]],
      ["line1", [nil, XSD::QName.new(nil, "Line1")]],
      ["line2", [nil, XSD::QName.new(nil, "Line2")], [0, 1]],
      ["line3", [nil, XSD::QName.new(nil, "Line3")], [0, 1]],
      ["postalCode", [nil, XSD::QName.new(nil, "PostalCode")], [0, 1]],
      ["recipientName", [nil, XSD::QName.new(nil, "RecipientName")]],
      ["recipientPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "RecipientPhoneNumber")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => RewardProgram,
    :schema_type => XSD::QName.new(nil, "RewardProgram"),
    :schema_element => [
      ["rewardNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardNumber")]],
      ["rewardId", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardId")]],
      ["rewardName", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardName")], [0, 1]],
      ["expiryMonth", [nil, XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", [nil, XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizeCheckoutResponse,
    :schema_type => XSD::QName.new(nil, "AuthorizeCheckoutResponse"),
    :schema_element => [
      ["merchantCallbackURL", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCallbackURL")]],
      ["stepupPending", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "StepupPending")]],
      ["oAuthVerifier", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthVerifier")], [0, 1]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizeExpressCheckoutResponse,
    :schema_type => XSD::QName.new(nil, "AuthorizeExpressCheckoutResponse"),
    :schema_element => [
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Checkout,
    :schema_type => XSD::QName.new(nil, "Checkout"),
    :schema_element => [
      ["card", ["Card", XSD::QName.new(nil, "Card")]],
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionId")]],
      ["contact", ["Contact", XSD::QName.new(nil, "Contact")]],
      ["shippingAddress", ["ShippingAddress", XSD::QName.new(nil, "ShippingAddress")], [0, 1]],
      ["authenticationOptions", ["AuthenticationOptions", XSD::QName.new(nil, "AuthenticationOptions")], [0, 1]],
      ["rewardProgram", ["RewardProgram", XSD::QName.new(nil, "RewardProgram")], [0, 1]],
      ["walletID", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletID")]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Error,
    :schema_type => XSD::QName.new(nil, "Error"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")], [0, 1]],
      ["reasonCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ReasonCode")]],
      ["recoverable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Recoverable")]],
      ["source", ["SOAP::SOAPString", XSD::QName.new(nil, "Source")]],
      ["details", ["Details", XSD::QName.new(nil, "Details")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Errors,
    :schema_type => XSD::QName.new(nil, "Errors"),
    :schema_element => [
      ["error", ["Error[]", XSD::QName.new(nil, "Error")], [0, nil]]
    ]
  )

  Registry.register(
    :class => Details,
    :schema_type => XSD::QName.new(nil, "Details"),
    :schema_element => [
      ["detail", ["Detail[]", XSD::QName.new(nil, "Detail")], [0, nil]]
    ]
  )

  Registry.register(
    :class => Detail,
    :schema_type => XSD::QName.new(nil, "Detail"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["value", ["SOAP::SOAPString", XSD::QName.new(nil, "Value")]]
    ]
  )

  Registry.register(
    :class => MerchantTransaction,
    :schema_type => XSD::QName.new(nil, "MerchantTransaction"),
    :schema_element => [
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionId")]],
      ["consumerKey", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerKey")], [0, 1]],
      ["currency", ["SOAP::SOAPString", XSD::QName.new(nil, "Currency")]],
      ["orderAmount", ["SOAP::SOAPLong", XSD::QName.new(nil, "OrderAmount")]],
      ["purchaseDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "PurchaseDate")]],
      ["transactionStatus", ["TransactionStatus", XSD::QName.new(nil, "TransactionStatus")]],
      ["approvalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ApprovalCode")]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]],
      ["expressCheckoutIndicator", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ExpressCheckoutIndicator")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MerchantTransactions,
    :schema_type => XSD::QName.new(nil, "MerchantTransactions"),
    :schema_element => [
      ["merchantTransactions", ["MerchantTransaction[]", XSD::QName.new(nil, "MerchantTransaction")], [0, nil]]
    ]
  )

  Registry.register(
    :class => ShippingAddressVerificationRequest,
    :schema_type => XSD::QName.new(nil, "ShippingAddressVerificationRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["verifiableAddresses", ["VerifiableAddresses", XSD::QName.new(nil, "VerifiableAddresses")]],
      ["shippingLocationProfileName", ["SOAP::SOAPString", XSD::QName.new(nil, "ShippingLocationProfileName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => VerifiableAddresses,
    :schema_type => XSD::QName.new(nil, "VerifiableAddresses"),
    :schema_element => [
      ["verifiableAddress", ["VerifiableAddress[]", XSD::QName.new(nil, "VerifiableAddress")], [1, nil]]
    ]
  )

  Registry.register(
    :class => VerifiableAddress,
    :schema_type => XSD::QName.new(nil, "VerifiableAddress"),
    :schema_element => [
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")]],
      ["countrySubdivision", ["SOAP::SOAPString", XSD::QName.new(nil, "CountrySubdivision")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShippingAddressVerificationResponse,
    :schema_type => XSD::QName.new(nil, "ShippingAddressVerificationResponse"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["verificationResults", ["VerificationResults", XSD::QName.new(nil, "VerificationResults")]]
    ]
  )

  Registry.register(
    :class => VerificationResults,
    :schema_type => XSD::QName.new(nil, "VerificationResults"),
    :schema_element => [
      ["verificationResult", ["VerificationResult[]", XSD::QName.new(nil, "VerificationResult")], [1, nil]]
    ]
  )

  Registry.register(
    :class => VerificationResult,
    :schema_type => XSD::QName.new(nil, "VerificationResult"),
    :schema_element => [
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")]],
      ["countrySubdivision", ["SOAP::SOAPString", XSD::QName.new(nil, "CountrySubdivision")], [0, 1]],
      ["accepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Accepted")]]
    ]
  )

  Registry.register(
    :class => ShoppingCart,
    :schema_type => XSD::QName.new(nil, "ShoppingCart"),
    :schema_element => [
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CurrencyCode")]],
      ["subtotal", ["SOAP::SOAPLong", XSD::QName.new(nil, "Subtotal")]],
      ["shoppingCartItem", ["ShoppingCartItem[]", XSD::QName.new(nil, "ShoppingCartItem")], [0, nil]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShoppingCartItem,
    :schema_type => XSD::QName.new(nil, "ShoppingCartItem"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
      ["quantity", ["SOAP::SOAPLong", XSD::QName.new(nil, "Quantity")]],
      ["value", ["SOAP::SOAPLong", XSD::QName.new(nil, "Value")]],
      ["imageURL", ["SOAP::SOAPString", XSD::QName.new(nil, "ImageURL")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShoppingCartRequest,
    :schema_type => XSD::QName.new(nil, "ShoppingCartRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["shoppingCart", ["ShoppingCart", XSD::QName.new(nil, "ShoppingCart")]],
      ["originUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "OriginUrl")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShoppingCartResponse,
    :schema_type => XSD::QName.new(nil, "ShoppingCartResponse"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Response,
    :schema_type => XSD::QName.new(nil, "Response"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ExpressCheckoutRequest,
    :schema_type => XSD::QName.new(nil, "ExpressCheckoutRequest"),
    :schema_element => [
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["precheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PrecheckoutTransactionId")]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CurrencyCode")]],
      ["orderAmount", ["SOAP::SOAPLong", XSD::QName.new(nil, "OrderAmount")]],
      ["cardId", ["SOAP::SOAPString", XSD::QName.new(nil, "CardId")]],
      ["shippingAddressId", ["SOAP::SOAPString", XSD::QName.new(nil, "ShippingAddressId")]],
      ["rewardProgramId", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardProgramId")], [0, 1]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["advancedCheckoutOverride", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AdvancedCheckoutOverride")]],
      ["originUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "OriginUrl")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ExpressCheckoutResponse,
    :schema_type => XSD::QName.new(nil, "ExpressCheckoutResponse"),
    :schema_element => [
      ["checkout", ["Checkout", XSD::QName.new(nil, "Checkout")], [0, 1]],
      ["longAccessToken", ["SOAP::SOAPString", XSD::QName.new(nil, "LongAccessToken")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrecheckoutDataRequest,
    :schema_type => XSD::QName.new(nil, "PrecheckoutDataRequest"),
    :schema_element => [
      ["pairingDataTypes", ["PairingDataTypes", XSD::QName.new(nil, "PairingDataTypes")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrecheckoutDataResponse,
    :schema_type => XSD::QName.new(nil, "PrecheckoutDataResponse"),
    :schema_element => [
      ["precheckoutData", ["PrecheckoutData", XSD::QName.new(nil, "PrecheckoutData")]],
      ["walletPartnerLogoUrl", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "WalletPartnerLogoUrl")]],
      ["masterpassLogoUrl", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "MasterpassLogoUrl")]],
      ["longAccessToken", ["SOAP::SOAPString", XSD::QName.new(nil, "LongAccessToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrecheckoutCards,
    :schema_type => XSD::QName.new(nil, "PrecheckoutCards"),
    :schema_element => [
      ["card", ["PrecheckoutCard[]", XSD::QName.new(nil, "Card")], [0, nil]]
    ]
  )

  Registry.register(
    :class => PrecheckoutShippingAddresses,
    :schema_type => XSD::QName.new(nil, "PrecheckoutShippingAddresses"),
    :schema_element => [
      ["shippingAddress", ["PrecheckoutShippingAddress[]", XSD::QName.new(nil, "ShippingAddress")], [0, nil]]
    ]
  )

  Registry.register(
    :class => PrecheckoutRewardPrograms,
    :schema_type => XSD::QName.new(nil, "PrecheckoutRewardPrograms"),
    :schema_element => [
      ["rewardProgram", ["PrecheckoutRewardProgram[]", XSD::QName.new(nil, "RewardProgram")], [0, nil]]
    ]
  )

  Registry.register(
    :class => PrecheckoutData,
    :schema_type => XSD::QName.new(nil, "PrecheckoutData"),
    :schema_element => [
      ["cards", ["PrecheckoutCards", XSD::QName.new(nil, "Cards")]],
      ["contact", ["Contact", XSD::QName.new(nil, "Contact")], [0, 1]],
      ["shippingAddresses", ["PrecheckoutShippingAddresses", XSD::QName.new(nil, "ShippingAddresses")]],
      ["rewardPrograms", ["PrecheckoutRewardPrograms", XSD::QName.new(nil, "RewardPrograms")]],
      ["walletName", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletName")]],
      ["precheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PrecheckoutTransactionId")]],
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizePrecheckoutRequest,
    :schema_type => XSD::QName.new(nil, "AuthorizePrecheckoutRequest"),
    :schema_element => [
      ["precheckoutData", ["PrecheckoutData", XSD::QName.new(nil, "PrecheckoutData")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizePrecheckoutResponse,
    :schema_type => XSD::QName.new(nil, "AuthorizePrecheckoutResponse"),
    :schema_element => [
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrecheckoutCard,
    :schema_type => XSD::QName.new(nil, "PrecheckoutCard"),
    :schema_element => [
      ["brandId", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandId")]],
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandName")]],
      ["billingAddress", ["Address", XSD::QName.new(nil, "BillingAddress")]],
      ["cardHolderName", ["SOAP::SOAPString", XSD::QName.new(nil, "CardHolderName")]],
      ["expiryMonth", [nil, XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", [nil, XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["cardId", ["SOAP::SOAPString", XSD::QName.new(nil, "CardId")]],
      ["lastFour", ["SOAP::SOAPString", XSD::QName.new(nil, "LastFour")]],
      ["cardAlias", ["SOAP::SOAPString", XSD::QName.new(nil, "CardAlias")]],
      ["selectedAsDefault", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SelectedAsDefault")]]
    ]
  )

  Registry.register(
    :class => PrecheckoutShippingAddress,
    :schema_type => XSD::QName.new(nil, "PrecheckoutShippingAddress"),
    :schema_basetype => XSD::QName.new(nil, "Address"),
    :schema_element => [
      ["city", [nil, XSD::QName.new(nil, "City")]],
      ["country", [nil, XSD::QName.new(nil, "Country")]],
      ["countrySubdivision", [nil, XSD::QName.new(nil, "CountrySubdivision")], [0, 1]],
      ["line1", [nil, XSD::QName.new(nil, "Line1")]],
      ["line2", [nil, XSD::QName.new(nil, "Line2")], [0, 1]],
      ["line3", [nil, XSD::QName.new(nil, "Line3")], [0, 1]],
      ["postalCode", [nil, XSD::QName.new(nil, "PostalCode")], [0, 1]],
      ["recipientName", ["SOAP::SOAPString", XSD::QName.new(nil, "RecipientName")]],
      ["recipientPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "RecipientPhoneNumber")]],
      ["addressId", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressId")]],
      ["selectedAsDefault", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SelectedAsDefault")]],
      ["shippingAlias", ["SOAP::SOAPString", XSD::QName.new(nil, "ShippingAlias")]]
    ]
  )

  Registry.register(
    :class => PrecheckoutRewardProgram,
    :schema_type => XSD::QName.new(nil, "PrecheckoutRewardProgram"),
    :schema_element => [
      ["rewardNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardNumber")]],
      ["rewardId", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardId")]],
      ["rewardName", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardName")], [0, 1]],
      ["expiryMonth", [nil, XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", [nil, XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["rewardProgramId", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardProgramId")]],
      ["rewardLogoUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardLogoUrl")]]
    ]
  )

  Registry.register(
    :class => PairingDataType,
    :schema_type => XSD::QName.new(nil, "PairingDataType"),
    :schema_element => [
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PairingDataTypes,
    :schema_type => XSD::QName.new(nil, "PairingDataTypes"),
    :schema_element => [
      ["pairingDataType", ["PairingDataType[]", XSD::QName.new(nil, "PairingDataType")], [1, nil]]
    ]
  )

  Registry.register(
    :class => Gender,
    :schema_type => XSD::QName.new(nil, "Gender")
  )

  Registry.register(
    :class => TransactionStatus,
    :schema_type => XSD::QName.new(nil, "TransactionStatus")
  )

  Registry.register(
    :class => AuthorizeCheckoutRequest,
    :schema_name => XSD::QName.new(nil, "AuthorizeCheckoutRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["authorizedCheckout", ["AuthorizedCheckout", XSD::QName.new(nil, "AuthorizedCheckout")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]],
      ["merchantParameterId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantParameterId")], [0, 1]],
      ["deviceType", ["SOAP::SOAPString", XSD::QName.new(nil, "DeviceType")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizeCheckoutResponse,
    :schema_name => XSD::QName.new(nil, "AuthorizeCheckoutResponse"),
    :schema_element => [
      ["merchantCallbackURL", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCallbackURL")]],
      ["stepupPending", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "StepupPending")]],
      ["oAuthVerifier", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthVerifier")], [0, 1]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizeExpressCheckoutRequest,
    :schema_name => XSD::QName.new(nil, "AuthorizeExpressCheckoutRequest"),
    :schema_element => [
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CurrencyCode")]],
      ["orderAmount", ["SOAP::SOAPLong", XSD::QName.new(nil, "OrderAmount")]],
      ["merchantParameterId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantParameterId")]],
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["authorizedExpressCheckout", ["AuthorizedCheckout", XSD::QName.new(nil, "AuthorizedExpressCheckout")]],
      ["deviceType", ["SOAP::SOAPString", XSD::QName.new(nil, "DeviceType")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizeExpressCheckoutResponse,
    :schema_name => XSD::QName.new(nil, "AuthorizeExpressCheckoutResponse"),
    :schema_element => [
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Response,
    :schema_name => XSD::QName.new(nil, "Response"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Checkout,
    :schema_name => XSD::QName.new(nil, "Checkout"),
    :schema_element => [
      ["card", ["Card", XSD::QName.new(nil, "Card")]],
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionId")]],
      ["contact", ["Contact", XSD::QName.new(nil, "Contact")]],
      ["shippingAddress", ["ShippingAddress", XSD::QName.new(nil, "ShippingAddress")], [0, 1]],
      ["authenticationOptions", ["AuthenticationOptions", XSD::QName.new(nil, "AuthenticationOptions")], [0, 1]],
      ["rewardProgram", ["RewardProgram", XSD::QName.new(nil, "RewardProgram")], [0, 1]],
      ["walletID", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletID")]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Errors,
    :schema_name => XSD::QName.new(nil, "Errors"),
    :schema_element => [
      ["error", ["Error[]", XSD::QName.new(nil, "Error")], [0, nil]]
    ]
  )

  Registry.register(
    :class => MerchantTransactions,
    :schema_name => XSD::QName.new(nil, "MerchantTransactions"),
    :schema_element => [
      ["merchantTransactions", ["MerchantTransaction[]", XSD::QName.new(nil, "MerchantTransaction")], [0, nil]]
    ]
  )

  Registry.register(
    :class => ShippingAddressVerificationRequest,
    :schema_name => XSD::QName.new(nil, "ShippingAddressVerificationRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["verifiableAddresses", ["VerifiableAddresses", XSD::QName.new(nil, "VerifiableAddresses")]],
      ["shippingLocationProfileName", ["SOAP::SOAPString", XSD::QName.new(nil, "ShippingLocationProfileName")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShippingAddressVerificationResponse,
    :schema_name => XSD::QName.new(nil, "ShippingAddressVerificationResponse"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["verificationResults", ["VerificationResults", XSD::QName.new(nil, "VerificationResults")]]
    ]
  )

  Registry.register(
    :class => ShoppingCartRequest,
    :schema_name => XSD::QName.new(nil, "ShoppingCartRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["shoppingCart", ["ShoppingCart", XSD::QName.new(nil, "ShoppingCart")]],
      ["originUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "OriginUrl")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShoppingCartResponse,
    :schema_name => XSD::QName.new(nil, "ShoppingCartResponse"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ExtensionPoint,
    :schema_name => XSD::QName.new(nil, "ExtensionPoint"),
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  Registry.register(
    :class => ExpressCheckoutRequest,
    :schema_name => XSD::QName.new(nil, "ExpressCheckoutRequest"),
    :schema_element => [
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["precheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PrecheckoutTransactionId")]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CurrencyCode")]],
      ["orderAmount", ["SOAP::SOAPLong", XSD::QName.new(nil, "OrderAmount")]],
      ["cardId", ["SOAP::SOAPString", XSD::QName.new(nil, "CardId")]],
      ["shippingAddressId", ["SOAP::SOAPString", XSD::QName.new(nil, "ShippingAddressId")]],
      ["rewardProgramId", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardProgramId")], [0, 1]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["advancedCheckoutOverride", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "AdvancedCheckoutOverride")]],
      ["originUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "OriginUrl")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ExpressCheckoutResponse,
    :schema_name => XSD::QName.new(nil, "ExpressCheckoutResponse"),
    :schema_element => [
      ["checkout", ["Checkout", XSD::QName.new(nil, "Checkout")], [0, 1]],
      ["longAccessToken", ["SOAP::SOAPString", XSD::QName.new(nil, "LongAccessToken")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrecheckoutDataRequest,
    :schema_name => XSD::QName.new(nil, "PrecheckoutDataRequest"),
    :schema_element => [
      ["pairingDataTypes", ["PairingDataTypes", XSD::QName.new(nil, "PairingDataTypes")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrecheckoutDataResponse,
    :schema_name => XSD::QName.new(nil, "PrecheckoutDataResponse"),
    :schema_element => [
      ["precheckoutData", ["PrecheckoutData", XSD::QName.new(nil, "PrecheckoutData")]],
      ["walletPartnerLogoUrl", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "WalletPartnerLogoUrl")]],
      ["masterpassLogoUrl", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "MasterpassLogoUrl")]],
      ["longAccessToken", ["SOAP::SOAPString", XSD::QName.new(nil, "LongAccessToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrecheckoutData,
    :schema_name => XSD::QName.new(nil, "PrecheckoutData"),
    :schema_element => [
      ["cards", ["PrecheckoutCards", XSD::QName.new(nil, "Cards")]],
      ["contact", ["Contact", XSD::QName.new(nil, "Contact")], [0, 1]],
      ["shippingAddresses", ["PrecheckoutShippingAddresses", XSD::QName.new(nil, "ShippingAddresses")]],
      ["rewardPrograms", ["PrecheckoutRewardPrograms", XSD::QName.new(nil, "RewardPrograms")]],
      ["walletName", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletName")]],
      ["precheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PrecheckoutTransactionId")]],
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrecheckoutShippingAddresses,
    :schema_name => XSD::QName.new(nil, "PrecheckoutShippingAddresses"),
    :schema_element => [
      ["shippingAddress", ["PrecheckoutShippingAddress[]", XSD::QName.new(nil, "ShippingAddress")], [0, nil]]
    ]
  )

  Registry.register(
    :class => PrecheckoutRewardPrograms,
    :schema_name => XSD::QName.new(nil, "PrecheckoutRewardPrograms"),
    :schema_element => [
      ["rewardProgram", ["PrecheckoutRewardProgram[]", XSD::QName.new(nil, "RewardProgram")], [0, nil]]
    ]
  )

  Registry.register(
    :class => PrecheckoutCards,
    :schema_name => XSD::QName.new(nil, "PrecheckoutCards"),
    :schema_element => [
      ["card", ["PrecheckoutCard[]", XSD::QName.new(nil, "Card")], [0, nil]]
    ]
  )

  Registry.register(
    :class => AuthorizePrecheckoutRequest,
    :schema_name => XSD::QName.new(nil, "AuthorizePrecheckoutRequest"),
    :schema_element => [
      ["precheckoutData", ["PrecheckoutData", XSD::QName.new(nil, "PrecheckoutData")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizePrecheckoutResponse,
    :schema_name => XSD::QName.new(nil, "AuthorizePrecheckoutResponse"),
    :schema_element => [
      ["status", ["SOAP::SOAPString", XSD::QName.new(nil, "Status")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrecheckoutCard,
    :schema_name => XSD::QName.new(nil, "PrecheckoutCard"),
    :schema_element => [
      ["brandId", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandId")]],
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandName")]],
      ["billingAddress", ["Address", XSD::QName.new(nil, "BillingAddress")]],
      ["cardHolderName", ["SOAP::SOAPString", XSD::QName.new(nil, "CardHolderName")]],
      ["expiryMonth", [nil, XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", [nil, XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["cardId", ["SOAP::SOAPString", XSD::QName.new(nil, "CardId")]],
      ["lastFour", ["SOAP::SOAPString", XSD::QName.new(nil, "LastFour")]],
      ["cardAlias", ["SOAP::SOAPString", XSD::QName.new(nil, "CardAlias")]],
      ["selectedAsDefault", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SelectedAsDefault")]]
    ]
  )

  Registry.register(
    :class => PrecheckoutShippingAddress,
    :schema_name => XSD::QName.new(nil, "PrecheckoutShippingAddress"),
    :schema_element => [
      ["city", [nil, XSD::QName.new(nil, "City")]],
      ["country", [nil, XSD::QName.new(nil, "Country")]],
      ["countrySubdivision", [nil, XSD::QName.new(nil, "CountrySubdivision")], [0, 1]],
      ["line1", [nil, XSD::QName.new(nil, "Line1")]],
      ["line2", [nil, XSD::QName.new(nil, "Line2")], [0, 1]],
      ["line3", [nil, XSD::QName.new(nil, "Line3")], [0, 1]],
      ["postalCode", [nil, XSD::QName.new(nil, "PostalCode")], [0, 1]],
      ["recipientName", ["SOAP::SOAPString", XSD::QName.new(nil, "RecipientName")]],
      ["recipientPhoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "RecipientPhoneNumber")]],
      ["addressId", ["SOAP::SOAPString", XSD::QName.new(nil, "AddressId")]],
      ["selectedAsDefault", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SelectedAsDefault")]],
      ["shippingAlias", ["SOAP::SOAPString", XSD::QName.new(nil, "ShippingAlias")]]
    ]
  )

  Registry.register(
    :class => PrecheckoutRewardProgram,
    :schema_name => XSD::QName.new(nil, "PrecheckoutRewardProgram"),
    :schema_element => [
      ["rewardNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardNumber")]],
      ["rewardId", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardId")]],
      ["rewardName", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardName")], [0, 1]],
      ["expiryMonth", [nil, XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", [nil, XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["rewardProgramId", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardProgramId")]],
      ["rewardLogoUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "RewardLogoUrl")]]
    ]
  )

  Registry.register(
    :class => PairingDataType,
    :schema_name => XSD::QName.new(nil, "PairingDataType"),
    :schema_element => [
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PairingDataTypes,
    :schema_name => XSD::QName.new(nil, "PairingDataTypes"),
    :schema_element => [
      ["pairingDataType", ["PairingDataType[]", XSD::QName.new(nil, "PairingDataType")], [1, nil]]
    ]
  )
end
