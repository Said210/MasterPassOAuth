require 'xsd/mapping'
require 'switch_api_services.rb'

module SwitchApiServicesMappingRegistry
  NsXMLSchema = "http://www.w3.org/2001/XMLSchema"
  Registry = ::SOAP::Mapping::LiteralRegistry.new

  Registry.register(
    :class => CardBrandsResponse,
    :schema_type => XSD::QName.new(nil, "CardBrandsResponse"),
    :schema_element => [
      ["cardBrands", ["CardBrands", XSD::QName.new(nil, "CardBrands")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShoppingCartResults,
    :schema_type => XSD::QName.new(nil, "ShoppingCartResults"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["shoppingCart", ["ShoppingCart", XSD::QName.new(nil, "ShoppingCart")]]
    ]
  )

  Registry.register(
    :class => UserLocale,
    :schema_type => XSD::QName.new(nil, "UserLocale"),
    :schema_element => [
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "Locale")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(nil, "Language")], [0, 1]],
      ["localeModified", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "LocaleModified")]],
      ["generatedFromCookie", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "GeneratedFromCookie")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => WalletProviderSearch,
    :schema_type => XSD::QName.new(nil, "WalletProviderSearch"),
    :schema_element => [
      ["country", ["CountryCode", XSD::QName.new(nil, "Country")], [0, 1]],
      ["startIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "StartIndex")], [0, 1]],
      ["numberOfResults", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumberOfResults")], [0, 1]],
      ["walletProviderName", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletProviderName")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => WalletProviderSearchResults,
    :schema_type => XSD::QName.new(nil, "WalletProviderSearchResults"),
    :schema_element => [
      ["totalResults", ["SOAP::SOAPInt", XSD::QName.new(nil, "TotalResults")]],
      ["walletProvider", ["WalletProvider[]", XSD::QName.new(nil, "WalletProvider")], [0, nil]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MerchantInitializationRequest,
    :schema_type => XSD::QName.new(nil, "MerchantInitializationRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]],
      ["originUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "OriginUrl")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MerchantInitializationResponse,
    :schema_type => XSD::QName.new(nil, "MerchantInitializationResponse"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizePairingRequest,
    :schema_type => XSD::QName.new(nil, "AuthorizePairingRequest"),
    :schema_element => [
      ["pairingDataTypes", ["PairingDataTypes", XSD::QName.new(nil, "PairingDataTypes")]],
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["expressCheckout", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ExpressCheckout")]],
      ["consumerCountry", ["Country", XSD::QName.new(nil, "ConsumerCountry")]],
      ["silentPairing", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SilentPairing")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizePairingResponse,
    :schema_type => XSD::QName.new(nil, "AuthorizePairingResponse"),
    :schema_element => [
      ["verifierToken", ["SOAP::SOAPString", XSD::QName.new(nil, "VerifierToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectedMerchantsRequest,
    :schema_type => XSD::QName.new(nil, "ConnectedMerchantsRequest"),
    :schema_element => [
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "StartDate")]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndDate")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectionHistoryRequest,
    :schema_type => XSD::QName.new(nil, "ConnectionHistoryRequest"),
    :schema_element => [
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "StartDate")]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndDate")]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => DeletePairingRequest,
    :schema_type => XSD::QName.new(nil, "DeletePairingRequest"),
    :schema_element => [
      ["merchantName", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantName")]],
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["connectionId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConnectionId")]]
    ]
  )

  Registry.register(
    :class => DeletePairingResponse,
    :schema_type => XSD::QName.new(nil, "DeletePairingResponse"),
    :schema_element => [
      ["statusMsg", ["SOAP::SOAPString", XSD::QName.new(nil, "StatusMsg")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")]]
    ]
  )

  Registry.register(
    :class => MerchantPermissionResponse,
    :schema_type => XSD::QName.new(nil, "MerchantPermissionResponse"),
    :schema_element => [
      ["connectPermitted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ConnectPermitted")]],
      ["expressCheckoutPermitted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ExpressCheckoutPermitted")]],
      ["pairingDataTypes", ["PairingDataTypes", XSD::QName.new(nil, "PairingDataTypes")]]
    ]
  )

  Registry.register(
    :class => MerchantParametersRequest,
    :schema_type => XSD::QName.new(nil, "MerchantParametersRequest"),
    :schema_element => [
      ["merchantCheckoutIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutIdentifier")]],
      ["requestBasicCheckout", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RequestBasicCheckout")]],
      ["oauthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OauthToken")], [0, 1]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]],
      ["originUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "OriginUrl")], [0, 1]],
      ["returnUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "ReturnUrl")], [0, 1]],
      ["merchantCallbackUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCallbackUrl")], [0, 1]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "QueryString")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MerchantParametersResponse,
    :schema_type => XSD::QName.new(nil, "MerchantParametersResponse"),
    :schema_element => [
      ["merchantParametersId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantParametersId")]],
      ["merchantCallbackUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCallbackUrl")]],
      ["returnUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "ReturnUrl")]],
      ["merchantSuppressSignUp", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantSuppressSignUp")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MerchantPermissionRequest,
    :schema_type => XSD::QName.new(nil, "MerchantPermissionRequest"),
    :schema_element => [
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]]
    ]
  )

  Registry.register(
    :class => MerchantPermissionResponseWrapper,
    :schema_type => XSD::QName.new(nil, "MerchantPermissionResponseWrapper"),
    :schema_element => [
      ["merchantPermissionResponse", ["MerchantPermissionResponse", XSD::QName.new(nil, "MerchantPermissionResponse")]]
    ]
  )

  Registry.register(
    :class => ShoppingCartResultsWrapper,
    :schema_type => XSD::QName.new(nil, "ShoppingCartResultsWrapper"),
    :schema_element => [
      ["shoppingCartResults", ["ShoppingCartResults", XSD::QName.new(nil, "ShoppingCartResults")]]
    ]
  )

  Registry.register(
    :class => UserLocaleWrapper,
    :schema_type => XSD::QName.new(nil, "UserLocaleWrapper"),
    :schema_element => [
      ["userLocale", ["UserLocale", XSD::QName.new(nil, "UserLocale")]]
    ]
  )

  Registry.register(
    :class => WalletProviderSearchResultsWrapper,
    :schema_type => XSD::QName.new(nil, "WalletProviderSearchResultsWrapper"),
    :schema_element => [
      ["walletProviderSearchResults", ["WalletProviderSearchResults", XSD::QName.new(nil, "WalletProviderSearchResults")]]
    ]
  )

  Registry.register(
    :class => ChainedTokenRequest,
    :schema_type => XSD::QName.new(nil, "ChainedTokenRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["merchantCheckoutIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutIdentifier")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ChainedTokenResponse,
    :schema_type => XSD::QName.new(nil, "ChainedTokenResponse"),
    :schema_element => [
      ["requestToken", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestToken")]],
      ["verifierToken", ["SOAP::SOAPString", XSD::QName.new(nil, "VerifierToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectedMerchantsResponse,
    :schema_type => XSD::QName.new(nil, "ConnectedMerchantsResponse"),
    :schema_element => [
      ["merchants", ["Merchant[]", XSD::QName.new(nil, "Merchants")], [0, nil]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Address,
    :schema_type => XSD::QName.new(nil, "Address"),
    :schema_element => [
      ["line1", ["SOAP::SOAPString", XSD::QName.new(nil, "Line1")]],
      ["line2", ["SOAP::SOAPString", XSD::QName.new(nil, "Line2")], [0, 1]],
      ["line3", ["SOAP::SOAPString", XSD::QName.new(nil, "Line3")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")]],
      ["countrySubdivision", ["SOAP::SOAPString", XSD::QName.new(nil, "CountrySubdivision")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PostalCode")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")]]
    ]
  )

  Registry.register(
    :class => CardBrand,
    :schema_type => XSD::QName.new(nil, "CardBrand"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")]],
      ["acceptanceMarkLogo", ["Logo", XSD::QName.new(nil, "AcceptanceMarkLogo")]]
    ]
  )

  Registry.register(
    :class => CardBrands,
    :schema_type => XSD::QName.new(nil, "CardBrands"),
    :schema_element => [
      ["cardBrand", ["CardBrand[]", XSD::QName.new(nil, "CardBrand")], [1, nil]]
    ]
  )

  Registry.register(
    :class => CardBrandSearch,
    :schema_type => XSD::QName.new(nil, "CardBrandSearch"),
    :schema_element => [
      ["cardNumberPrefix", ["SOAP::SOAPString", XSD::QName.new(nil, "CardNumberPrefix")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CardSecurityRequired,
    :schema_type => XSD::QName.new(nil, "CardSecurityRequired"),
    :schema_element => [
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Active")]],
      ["secureCodeCardSecurityDetails", ["SecureCodeCardSecurityDetails", XSD::QName.new(nil, "SecureCodeCardSecurityDetails")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CartItem,
    :schema_type => XSD::QName.new(nil, "CartItem"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
      ["quantity", ["SOAP::SOAPLong", XSD::QName.new(nil, "Quantity")]],
      ["unitPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "UnitPrice")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Checkout,
    :schema_type => XSD::QName.new(nil, "Checkout"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "Id")]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")]],
      ["name", ["Name", XSD::QName.new(nil, "Name")]],
      ["paymentMethod", ["PaymentCard", XSD::QName.new(nil, "PaymentMethod")]],
      ["deliveryDestination", ["DeliveryDestination", XSD::QName.new(nil, "DeliveryDestination")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["loyaltyCard", ["LoyaltyCard", XSD::QName.new(nil, "LoyaltyCard")], [0, 1]],
      ["checkoutResourceUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "CheckoutResourceUrl")]],
      ["merchantCallbackUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCallbackUrl")]],
      ["checkoutPairingCallbackUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "CheckoutPairingCallbackUrl")]],
      ["verifierToken", ["SOAP::SOAPString", XSD::QName.new(nil, "VerifierToken")]]
    ]
  )

  Registry.register(
    :class => Connection,
    :schema_type => XSD::QName.new(nil, "Connection"),
    :schema_element => [
      ["connectionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "ConnectionId")]],
      ["merchantName", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantName")]],
      ["connectionName", ["SOAP::SOAPString", XSD::QName.new(nil, "ConnectionName")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")]],
      ["dataTypes", ["DataTypes", XSD::QName.new(nil, "DataTypes")]],
      ["oneClickSupported", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OneClickSupported")]],
      ["oneClickEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OneClickEnabled")]],
      ["lastUpdatedUsed", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "LastUpdatedUsed")]],
      ["connectedSinceDate", ["SOAP::SOAPString", XSD::QName.new(nil, "ConnectedSinceDate")]],
      ["expirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ExpirationDate")]],
      ["merchantUrl", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "MerchantUrl")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectionList,
    :schema_type => XSD::QName.new(nil, "ConnectionList"),
    :schema_element => [
      ["connection", ["Connection[]", XSD::QName.new(nil, "Connection")], [0, nil]]
    ]
  )

  Registry.register(
    :class => ConnectionHistory,
    :schema_type => XSD::QName.new(nil, "ConnectionHistory"),
    :schema_element => [
      ["merchantInfo", ["MerchantInfo", XSD::QName.new(nil, "MerchantInfo")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectionHistoryList,
    :schema_type => XSD::QName.new(nil, "ConnectionHistoryList"),
    :schema_element => [
      ["connectionHistory", ["ConnectionHistory[]", XSD::QName.new(nil, "ConnectionHistory")], [0, nil]]
    ]
  )

  Registry.register(
    :class => CookiePolicy,
    :schema_type => XSD::QName.new(nil, "CookiePolicy"),
    :schema_basetype => XSD::QName.new(nil, "LegalNotice"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "Content")]],
      ["effectiveDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "EffectiveDate")]],
      ["explicit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Explicit")]],
      ["accepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Accepted")]]
    ]
  )

  Registry.register(
    :class => TermsOfUseUrls,
    :schema_type => XSD::QName.new(nil, "TermsOfUseUrls"),
    :schema_element => [
      ["localUrl", ["LocalUrl[]", XSD::QName.new(nil, "LocalUrl")], [0, nil]]
    ]
  )

  Registry.register(
    :class => LocalUrl,
    :schema_type => XSD::QName.new(nil, "LocalUrl"),
    :schema_element => [
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "Url")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(nil, "Language")]],
      ["documentName", ["SOAP::SOAPString", XSD::QName.new(nil, "DocumentName")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrivacyUrls,
    :schema_type => XSD::QName.new(nil, "PrivacyUrls"),
    :schema_element => [
      ["localUrl", ["LocalUrl[]", XSD::QName.new(nil, "LocalUrl")], [0, nil]]
    ]
  )

  Registry.register(
    :class => CookieNoticeUrls,
    :schema_type => XSD::QName.new(nil, "CookieNoticeUrls"),
    :schema_element => [
      ["localUrl", ["LocalUrl[]", XSD::QName.new(nil, "LocalUrl")], [0, nil]]
    ]
  )

  Registry.register(
    :class => Countries,
    :schema_type => XSD::QName.new(nil, "Countries"),
    :schema_element => [
      ["country", ["Country[]", XSD::QName.new(nil, "Country")], [0, nil]]
    ]
  )

  Registry.register(
    :class => Country,
    :schema_type => XSD::QName.new(nil, "Country"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["callingCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CallingCode")]],
      ["locale", ["Locale[]", XSD::QName.new(nil, "Locale")], [0, nil]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CountryCode,
    :schema_type => XSD::QName.new(nil, "CountryCode"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]]
    ]
  )

  Registry.register(
    :class => CountrySubdivision,
    :schema_type => XSD::QName.new(nil, "CountrySubdivision"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CountrySubdivisions,
    :schema_type => XSD::QName.new(nil, "CountrySubdivisions"),
    :schema_element => [
      ["countrySubdivision", ["CountrySubdivision[]", XSD::QName.new(nil, "CountrySubdivision")], [0, nil]]
    ]
  )

  Registry.register(
    :class => DataType,
    :schema_type => XSD::QName.new(nil, "DataType"),
    :schema_element => [
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")]]
    ]
  )

  Registry.register(
    :class => DataTypes,
    :schema_type => XSD::QName.new(nil, "DataTypes"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => DateOfBirth,
    :schema_type => XSD::QName.new(nil, "DateOfBirth"),
    :schema_element => [
      ["year", ["SOAP::SOAPInt", XSD::QName.new(nil, "Year")]],
      ["month", [nil, XSD::QName.new(nil, "Month")]],
      ["day", ["SOAP::SOAPInt", XSD::QName.new(nil, "Day")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => DeliveryDestination,
    :schema_type => XSD::QName.new(nil, "DeliveryDestination"),
    :schema_element => [
      ["shippingDestination", ["ShippingDestination", XSD::QName.new(nil, "ShippingDestination")], [0, 1]],
      ["emailDestination", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailDestination")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Error,
    :schema_type => XSD::QName.new(nil, "Error"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
      ["reasonCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ReasonCode")]],
      ["recoverable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Recoverable")]],
      ["source", ["SOAP::SOAPString", XSD::QName.new(nil, "Source")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
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
    :class => ExtensionPoint,
    :schema_type => XSD::QName.new(nil, "ExtensionPoint"),
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  Registry.register(
    :class => InvitationCodeCountries,
    :schema_type => XSD::QName.new(nil, "InvitationCodeCountries"),
    :schema_element => [
      ["country", ["Country[]", XSD::QName.new(nil, "Country")], [0, nil]]
    ]
  )

  Registry.register(
    :class => LegalNotice,
    :schema_type => XSD::QName.new(nil, "LegalNotice"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "Content")]],
      ["effectiveDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "EffectiveDate")]],
      ["explicit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Explicit")]],
      ["accepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Accepted")]]
    ]
  )

  Registry.register(
    :class => Locale,
    :schema_type => XSD::QName.new(nil, "Locale"),
    :schema_element => [
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "Locale")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(nil, "Language")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Locales,
    :schema_type => XSD::QName.new(nil, "Locales"),
    :schema_element => [
      ["locale", ["Locale[]", XSD::QName.new(nil, "Locale")], [0, nil]]
    ]
  )

  Registry.register(
    :class => Logo,
    :schema_type => XSD::QName.new(nil, "Logo"),
    :schema_element => [
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")]],
      ["height", ["SOAP::SOAPString", XSD::QName.new(nil, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPString", XSD::QName.new(nil, "Width")], [0, 1]],
      ["backgroundColor", ["SOAP::SOAPString", XSD::QName.new(nil, "BackgroundColor")], [0, 1]],
      ["url", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "Url")], [0, 1]],
      ["longDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "LongDescription")], [0, 1]],
      ["alternateText", ["SOAP::SOAPString", XSD::QName.new(nil, "AlternateText")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => LoyaltyBrand,
    :schema_type => XSD::QName.new(nil, "LoyaltyBrand"),
    :schema_element => [
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandName")]],
      ["brandId", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandId")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => LoyaltyCard,
    :schema_type => XSD::QName.new(nil, "LoyaltyCard"),
    :schema_element => [
      ["loyaltyCardId", ["SOAP::SOAPLong", XSD::QName.new(nil, "LoyaltyCardId")]],
      ["loyaltyBrandId", ["SOAP::SOAPLong", XSD::QName.new(nil, "LoyaltyBrandId")]],
      ["membershipNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "MembershipNumber")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["expiryMonth", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryYear")], [0, 1]]
    ]
  )

  Registry.register(
    :class => LoyaltyCards,
    :schema_type => XSD::QName.new(nil, "LoyaltyCards"),
    :schema_element => [
      ["loyaltyCard", ["LoyaltyCard[]", XSD::QName.new(nil, "LoyaltyCard")], [1, nil]]
    ]
  )

  Registry.register(
    :class => Merchant,
    :schema_type => XSD::QName.new(nil, "Merchant"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(nil, "DisplayName")], [0, 1]],
      ["merchantType", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantType")], [0, 1]],
      ["productionUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductionUrl")]],
      ["sandboxUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "SandboxUrl")]],
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MobilePhone,
    :schema_type => XSD::QName.new(nil, "MobilePhone"),
    :schema_element => [
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryCode")]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "PhoneNumber")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Name,
    :schema_type => XSD::QName.new(nil, "Name"),
    :schema_element => [
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "Prefix")], [0, 1]],
      ["first", ["SOAP::SOAPString", XSD::QName.new(nil, "First")]],
      ["middle", ["SOAP::SOAPString", XSD::QName.new(nil, "Middle")], [0, 1]],
      ["last", ["SOAP::SOAPString", XSD::QName.new(nil, "Last")]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "Suffix")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => NamePrefix,
    :schema_type => XSD::QName.new(nil, "NamePrefix"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => NamePrefixes,
    :schema_type => XSD::QName.new(nil, "NamePrefixes"),
    :schema_element => [
      ["namePrefix", ["NamePrefix[]", XSD::QName.new(nil, "NamePrefix")], [0, nil]]
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
    :class => PaymentCard,
    :schema_type => XSD::QName.new(nil, "PaymentCard"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "Id")]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")], [0, 1]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(nil, "Alias")], [0, 1]],
      ["verificationStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "VerificationStatus")], [0, 1]],
      ["cardholderName", ["SOAP::SOAPString", XSD::QName.new(nil, "CardholderName")]],
      ["cardBrand", ["CardBrand", XSD::QName.new(nil, "CardBrand")]],
      ["directProvisionedSwitch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DirectProvisionedSwitch")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "AccountNumber")], [0, 1]],
      ["maskedAccountNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "MaskedAccountNumber")], [0, 1]],
      ["expiryMonth", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["securityCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SecurityCode")], [0, 1]],
      ["phoneNumber", ["MobilePhone", XSD::QName.new(nil, "PhoneNumber")]],
      ["preferred", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Preferred")]],
      ["address", ["Address", XSD::QName.new(nil, "Address")]],
      ["issuer", ["Logo", XSD::QName.new(nil, "Issuer")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PaymentCards,
    :schema_type => XSD::QName.new(nil, "PaymentCards"),
    :schema_element => [
      ["paymentCard", ["PaymentCard[]", XSD::QName.new(nil, "PaymentCard")], [0, nil]]
    ]
  )

  Registry.register(
    :class => PersonalGreeting,
    :schema_type => XSD::QName.new(nil, "PersonalGreeting"),
    :schema_element => [
      ["personalGreetingText", ["SOAP::SOAPString", XSD::QName.new(nil, "PersonalGreetingText")]],
      ["userAlias", ["SOAP::SOAPString", XSD::QName.new(nil, "UserAlias")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(nil, "UserId")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Preferences,
    :schema_type => XSD::QName.new(nil, "Preferences"),
    :schema_element => [
      ["receiveEmailNotification", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReceiveEmailNotification")]],
      ["receiveMobileNotification", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReceiveMobileNotification")]],
      ["personalizationOptIn", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PersonalizationOptIn")]]
    ]
  )

  Registry.register(
    :class => PrivacyPolicy,
    :schema_type => XSD::QName.new(nil, "PrivacyPolicy"),
    :schema_basetype => XSD::QName.new(nil, "LegalNotice"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "Content")]],
      ["effectiveDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "EffectiveDate")]],
      ["explicit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Explicit")]],
      ["accepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Accepted")]]
    ]
  )

  Registry.register(
    :class => Profile,
    :schema_type => XSD::QName.new(nil, "Profile"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "Id")]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")]],
      ["emailAddress", [nil, XSD::QName.new(nil, "EmailAddress")]],
      ["mobilePhone", ["MobilePhone", XSD::QName.new(nil, "MobilePhone")]],
      ["name", ["ProfileName", XSD::QName.new(nil, "Name")]],
      ["preferences", ["Preferences", XSD::QName.new(nil, "Preferences")]],
      ["securityChallenge", ["SecurityChallenge[]", XSD::QName.new(nil, "SecurityChallenge")], [0, nil]],
      ["termsOfUseAccepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "TermsOfUseAccepted")]],
      ["privacyPolicyAccepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PrivacyPolicyAccepted")]],
      ["cookiePolicyAccepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CookiePolicyAccepted")]],
      ["personalGreeting", ["PersonalGreeting", XSD::QName.new(nil, "PersonalGreeting")], [0, 1]],
      ["cSRFToken", ["SOAP::SOAPString", XSD::QName.new(nil, "CSRFToken")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["countryOfResidence", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryOfResidence")]],
      ["locale", ["Locale", XSD::QName.new(nil, "Locale")]],
      ["dateOfBirth", ["DateOfBirth", XSD::QName.new(nil, "DateOfBirth")], [0, 1]],
      ["gender", ["Gender", XSD::QName.new(nil, "Gender")], [0, 1]],
      ["nationalId", ["SOAP::SOAPString", XSD::QName.new(nil, "NationalId")], [0, 1]],
      ["directProvisionedSwitch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DirectProvisionedSwitch")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ProfileName,
    :schema_type => XSD::QName.new(nil, "ProfileName"),
    :schema_basetype => XSD::QName.new(nil, "Name"),
    :schema_element => [
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "Prefix")], [0, 1]],
      ["first", ["SOAP::SOAPString", XSD::QName.new(nil, "First")]],
      ["middle", ["SOAP::SOAPString", XSD::QName.new(nil, "Middle")], [0, 1]],
      ["last", ["SOAP::SOAPString", XSD::QName.new(nil, "Last")]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "Suffix")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(nil, "Alias")], [0, 1]]
    ]
  )

  Registry.register(
    :class => SecureCodeCardSecurityDetails,
    :schema_type => XSD::QName.new(nil, "SecureCodeCardSecurityDetails"),
    :schema_element => [
      ["lookupData", ["SOAP::SOAPString", XSD::QName.new(nil, "LookupData")]],
      ["authorizationUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationUrl")]],
      ["merchantData", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantData")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => SecurityChallenge,
    :schema_type => XSD::QName.new(nil, "SecurityChallenge"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["question", ["SOAP::SOAPString", XSD::QName.new(nil, "Question")], [0, 1]],
      ["answer", ["SOAP::SOAPString", XSD::QName.new(nil, "Answer")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => SecurityChallenges,
    :schema_type => XSD::QName.new(nil, "SecurityChallenges"),
    :schema_element => [
      ["securityChallenge", ["SecurityChallenge[]", XSD::QName.new(nil, "SecurityChallenge")], [1, nil]]
    ]
  )

  Registry.register(
    :class => ShippingDestination,
    :schema_type => XSD::QName.new(nil, "ShippingDestination"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "Id")]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")], [0, 1]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(nil, "Alias")], [0, 1]],
      ["recipientName", ["SOAP::SOAPString", XSD::QName.new(nil, "RecipientName")]],
      ["phoneNumber", ["MobilePhone", XSD::QName.new(nil, "PhoneNumber")], [0, 1]],
      ["preferred", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Preferred")]],
      ["address", ["Address", XSD::QName.new(nil, "Address")]],
      ["directProvisionedSwitch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DirectProvisionedSwitch")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShippingDestinations,
    :schema_type => XSD::QName.new(nil, "ShippingDestinations"),
    :schema_element => [
      ["shippingDestination", ["ShippingDestination[]", XSD::QName.new(nil, "ShippingDestination")], [0, nil]]
    ]
  )

  Registry.register(
    :class => ShoppingCart,
    :schema_type => XSD::QName.new(nil, "ShoppingCart"),
    :schema_element => [
      ["cartTotal", ["SOAP::SOAPString", XSD::QName.new(nil, "CartTotal")]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CurrencyCode")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["cartItem", ["CartItem[]", XSD::QName.new(nil, "CartItem")], [0, nil]]
    ]
  )

  Registry.register(
    :class => TermsAndConditions,
    :schema_type => XSD::QName.new(nil, "TermsAndConditions"),
    :schema_basetype => XSD::QName.new(nil, "LegalNotice"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "Content")]],
      ["effectiveDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "EffectiveDate")]],
      ["explicit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Explicit")]],
      ["accepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Accepted")]]
    ]
  )

  Registry.register(
    :class => ValidateSecurityChallenge,
    :schema_type => XSD::QName.new(nil, "ValidateSecurityChallenge"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Success")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => WalletProvider,
    :schema_type => XSD::QName.new(nil, "WalletProvider"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "Id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["countries", ["Countries", XSD::QName.new(nil, "Countries")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")], [0, 1]],
      ["displayRank", ["SOAP::SOAPLong", XSD::QName.new(nil, "DisplayRank")], [0, 1]],
      ["preferredFlag", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PreferredFlag")]],
      ["newFlag", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NewFlag")]],
      ["lastUpdatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "LastUpdatedDate")]],
      ["lastTransactionDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "LastTransactionDate")], [0, 1]],
      ["encryptedUserId", ["SOAP::SOAPString", XSD::QName.new(nil, "EncryptedUserId")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["walletProviderUrl", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "WalletProviderUrl")]],
      ["apiWallet", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ApiWallet")], [0, 1]],
      ["whiteLabelWallet", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "WhiteLabelWallet")], [0, 1]],
      ["termsOfUseUrls", ["TermsOfUseUrls", XSD::QName.new(nil, "TermsOfUseUrls")]],
      ["privacyUrls", ["PrivacyUrls", XSD::QName.new(nil, "PrivacyUrls")]],
      ["cookieNoticeUrls", ["CookieNoticeUrls", XSD::QName.new(nil, "CookieNoticeUrls")]],
      ["checkoutUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "CheckoutUrl")]],
      ["accountMaintenanceUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "AccountMaintenanceUrl")]],
      ["addCardUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "AddCardUrl")]],
      ["addAddressUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "AddAddressUrl")]],
      ["pairingUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "PairingUrl")]],
      ["registrationUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "RegistrationUrl")]],
      ["logoutUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "LogoutUrl")]],
      ["customerServicePhoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CustomerServicePhoneNumber")], [0, 1]],
      ["connectEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ConnectEnabled")]],
      ["expressCheckoutEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ExpressCheckoutEnabled")]],
      ["invitationCodeCountries", ["InvitationCodeCountries", XSD::QName.new(nil, "InvitationCodeCountries")]],
      ["pLDPWallet", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PLDPWallet")], [0, 1]],
      ["mLDPWallet", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "MLDPWallet")], [0, 1]],
      ["lightboxEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "LightboxEnabled")]],
      ["lightboxVersion", ["SOAP::SOAPLong", XSD::QName.new(nil, "LightboxVersion")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Response,
    :schema_type => XSD::QName.new(nil, "Response"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")], [0, 1]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => TransactionDetails,
    :schema_type => XSD::QName.new(nil, "TransactionDetails"),
    :schema_element => [
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionId")]],
      ["widgetCode", ["SOAP::SOAPString", XSD::QName.new(nil, "WidgetCode")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CheckoutSelection,
    :schema_type => XSD::QName.new(nil, "CheckoutSelection"),
    :schema_element => [
      ["shippingDestinationId", ["SOAP::SOAPLong", XSD::QName.new(nil, "ShippingDestinationId")], [0, 1]],
      ["paymentCardId", ["SOAP::SOAPLong", XSD::QName.new(nil, "PaymentCardId")], [0, 1]],
      ["loyaltyCardId", ["SOAP::SOAPLong", XSD::QName.new(nil, "LoyaltyCardId")], [0, 1]],
      ["precheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PrecheckoutTransactionId")]],
      ["digitalGoods", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DigitalGoods")]],
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["timeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "TimeStamp")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CheckoutWrapper,
    :schema_type => XSD::QName.new(nil, "CheckoutWrapper"),
    :schema_element => [
      ["checkout", ["Checkout", XSD::QName.new(nil, "Checkout")]]
    ]
  )

  Registry.register(
    :class => ErrorWrapper,
    :schema_type => XSD::QName.new(nil, "ErrorWrapper"),
    :schema_element => [
      ["error", ["Error", XSD::QName.new(nil, "Error")]]
    ]
  )

  Registry.register(
    :class => LoyaltyBrandWrapper,
    :schema_type => XSD::QName.new(nil, "LoyaltyBrandWrapper"),
    :schema_element => [
      ["loyaltyBrand", ["LoyaltyBrand", XSD::QName.new(nil, "LoyaltyBrand")]]
    ]
  )

  Registry.register(
    :class => LoyaltyCardWrapper,
    :schema_type => XSD::QName.new(nil, "LoyaltyCardWrapper"),
    :schema_element => [
      ["loyaltyCard", ["LoyaltyCard", XSD::QName.new(nil, "LoyaltyCard")]]
    ]
  )

  Registry.register(
    :class => MerchantWrapper,
    :schema_type => XSD::QName.new(nil, "MerchantWrapper"),
    :schema_element => [
      ["merchant", ["Merchant", XSD::QName.new(nil, "Merchant")]]
    ]
  )

  Registry.register(
    :class => NamePrefixWrapper,
    :schema_type => XSD::QName.new(nil, "NamePrefixWrapper"),
    :schema_element => [
      ["namePrefix", ["NamePrefix", XSD::QName.new(nil, "NamePrefix")]]
    ]
  )

  Registry.register(
    :class => PairingDataTypeWrapper,
    :schema_type => XSD::QName.new(nil, "PairingDataTypeWrapper"),
    :schema_element => [
      ["pairingDataType", ["PairingDataType", XSD::QName.new(nil, "PairingDataType")]]
    ]
  )

  Registry.register(
    :class => PaymentCardWrapper,
    :schema_type => XSD::QName.new(nil, "PaymentCardWrapper"),
    :schema_element => [
      ["paymentCard", ["PaymentCard", XSD::QName.new(nil, "PaymentCard")]]
    ]
  )

  Registry.register(
    :class => PersonalGreetingWrapper,
    :schema_type => XSD::QName.new(nil, "PersonalGreetingWrapper"),
    :schema_element => [
      ["personalGreeting", ["PersonalGreeting", XSD::QName.new(nil, "PersonalGreeting")]]
    ]
  )

  Registry.register(
    :class => ProfileWrapper,
    :schema_type => XSD::QName.new(nil, "ProfileWrapper"),
    :schema_element => [
      ["profile", ["Profile", XSD::QName.new(nil, "Profile")]]
    ]
  )

  Registry.register(
    :class => ResponseWrapper,
    :schema_type => XSD::QName.new(nil, "ResponseWrapper"),
    :schema_element => [
      ["response", ["Response", XSD::QName.new(nil, "Response")]]
    ]
  )

  Registry.register(
    :class => SecurityChallengeWrapper,
    :schema_type => XSD::QName.new(nil, "SecurityChallengeWrapper"),
    :schema_element => [
      ["securityChallenge", ["SecurityChallenge", XSD::QName.new(nil, "SecurityChallenge")]]
    ]
  )

  Registry.register(
    :class => ShippingDestinationWrapper,
    :schema_type => XSD::QName.new(nil, "ShippingDestinationWrapper"),
    :schema_element => [
      ["shippingDestination", ["ShippingDestination", XSD::QName.new(nil, "ShippingDestination")]]
    ]
  )

  Registry.register(
    :class => ValidateSecurityChallengeWrapper,
    :schema_type => XSD::QName.new(nil, "ValidateSecurityChallengeWrapper"),
    :schema_element => [
      ["validateSecurityChallenge", ["ValidateSecurityChallenge", XSD::QName.new(nil, "ValidateSecurityChallenge")]]
    ]
  )

  Registry.register(
    :class => WalletProviderWrapper,
    :schema_type => XSD::QName.new(nil, "WalletProviderWrapper"),
    :schema_element => [
      ["walletProvider", ["WalletProvider", XSD::QName.new(nil, "WalletProvider")]]
    ]
  )

  Registry.register(
    :class => WalletWrapper,
    :schema_type => XSD::QName.new(nil, "WalletWrapper"),
    :schema_element => [
      ["wallet", ["Wallet", XSD::QName.new(nil, "Wallet")]]
    ]
  )

  Registry.register(
    :class => Wallet,
    :schema_type => XSD::QName.new(nil, "Wallet"),
    :schema_element => [
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Captcha,
    :schema_type => XSD::QName.new(nil, "Captcha"),
    :schema_element => [
      ["challenge", ["SOAP::SOAPString", XSD::QName.new(nil, "Challenge")]],
      ["response", ["SOAP::SOAPString", XSD::QName.new(nil, "Response")]],
      ["publicKey", ["SOAP::SOAPString", XSD::QName.new(nil, "PublicKey")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Activity,
    :schema_type => XSD::QName.new(nil, "Activity"),
    :schema_element => [
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "Date")]],
      ["expressCheckout", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpressCheckout")]],
      ["pairing", ["SOAP::SOAPString", XSD::QName.new(nil, "Pairing")]],
      ["pairingDataType", ["PairingDataType", XSD::QName.new(nil, "PairingDataType")]],
      ["precheckoutDataType", ["PairingDataType", XSD::QName.new(nil, "PrecheckoutDataType")]]
    ]
  )

  Registry.register(
    :class => MerchantInfoList,
    :schema_type => XSD::QName.new(nil, "MerchantInfoList"),
    :schema_element => [
      ["merchantInfo", ["MerchantInfo[]", XSD::QName.new(nil, "MerchantInfo")], [0, nil]]
    ]
  )

  Registry.register(
    :class => MerchantInfo,
    :schema_type => XSD::QName.new(nil, "MerchantInfo"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "Id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")]],
      ["activityList", ["ActivityList", XSD::QName.new(nil, "ActivityList")]]
    ]
  )

  Registry.register(
    :class => ActivityList,
    :schema_type => XSD::QName.new(nil, "ActivityList"),
    :schema_element => [
      ["activity", ["Activity[]", XSD::QName.new(nil, "Activity")], [0, nil]]
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
    :class => CardBrandsResponse,
    :schema_name => XSD::QName.new(nil, "CardBrandsResponse"),
    :schema_element => [
      ["cardBrands", ["CardBrands", XSD::QName.new(nil, "CardBrands")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShoppingCartResults,
    :schema_name => XSD::QName.new(nil, "ShoppingCartResults"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["shoppingCart", ["ShoppingCart", XSD::QName.new(nil, "ShoppingCart")]]
    ]
  )

  Registry.register(
    :class => UserLocale,
    :schema_name => XSD::QName.new(nil, "UserLocale"),
    :schema_element => [
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "Locale")], [0, 1]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(nil, "Language")], [0, 1]],
      ["localeModified", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "LocaleModified")]],
      ["generatedFromCookie", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "GeneratedFromCookie")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => WalletProviderSearch,
    :schema_name => XSD::QName.new(nil, "WalletProviderSearch"),
    :schema_element => [
      ["country", ["CountryCode", XSD::QName.new(nil, "Country")], [0, 1]],
      ["startIndex", ["SOAP::SOAPInt", XSD::QName.new(nil, "StartIndex")], [0, 1]],
      ["numberOfResults", ["SOAP::SOAPInt", XSD::QName.new(nil, "NumberOfResults")], [0, 1]],
      ["walletProviderName", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletProviderName")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => WalletProviderSearchResults,
    :schema_name => XSD::QName.new(nil, "WalletProviderSearchResults"),
    :schema_element => [
      ["totalResults", ["SOAP::SOAPInt", XSD::QName.new(nil, "TotalResults")]],
      ["walletProvider", ["WalletProvider[]", XSD::QName.new(nil, "WalletProvider")], [0, nil]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MerchantInitializationRequest,
    :schema_name => XSD::QName.new(nil, "MerchantInitializationRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]],
      ["originUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "OriginUrl")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MerchantInitializationResponse,
    :schema_name => XSD::QName.new(nil, "MerchantInitializationResponse"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizePairingRequest,
    :schema_name => XSD::QName.new(nil, "AuthorizePairingRequest"),
    :schema_element => [
      ["pairingDataTypes", ["PairingDataTypes", XSD::QName.new(nil, "PairingDataTypes")]],
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["expressCheckout", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ExpressCheckout")]],
      ["consumerCountry", ["Country", XSD::QName.new(nil, "ConsumerCountry")]],
      ["silentPairing", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "SilentPairing")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => AuthorizePairingResponse,
    :schema_name => XSD::QName.new(nil, "AuthorizePairingResponse"),
    :schema_element => [
      ["verifierToken", ["SOAP::SOAPString", XSD::QName.new(nil, "VerifierToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectedMerchantsRequest,
    :schema_name => XSD::QName.new(nil, "ConnectedMerchantsRequest"),
    :schema_element => [
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "StartDate")]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndDate")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectionHistoryRequest,
    :schema_name => XSD::QName.new(nil, "ConnectionHistoryRequest"),
    :schema_element => [
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["startDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "StartDate")]],
      ["endDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "EndDate")]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => DeletePairingRequest,
    :schema_name => XSD::QName.new(nil, "DeletePairingRequest"),
    :schema_element => [
      ["merchantName", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantName")]],
      ["consumerWalletId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConsumerWalletId")]],
      ["walletId", ["SOAP::SOAPString", XSD::QName.new(nil, "WalletId")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["connectionId", ["SOAP::SOAPString", XSD::QName.new(nil, "ConnectionId")]]
    ]
  )

  Registry.register(
    :class => DeletePairingResponse,
    :schema_name => XSD::QName.new(nil, "DeletePairingResponse"),
    :schema_element => [
      ["statusMsg", ["SOAP::SOAPString", XSD::QName.new(nil, "StatusMsg")]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")]]
    ]
  )

  Registry.register(
    :class => MerchantPermissionResponse,
    :schema_name => XSD::QName.new(nil, "MerchantPermissionResponse"),
    :schema_element => [
      ["connectPermitted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ConnectPermitted")]],
      ["expressCheckoutPermitted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ExpressCheckoutPermitted")]],
      ["pairingDataTypes", ["PairingDataTypes", XSD::QName.new(nil, "PairingDataTypes")]]
    ]
  )

  Registry.register(
    :class => MerchantParametersRequest,
    :schema_name => XSD::QName.new(nil, "MerchantParametersRequest"),
    :schema_element => [
      ["merchantCheckoutIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutIdentifier")]],
      ["requestBasicCheckout", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "RequestBasicCheckout")]],
      ["oauthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OauthToken")], [0, 1]],
      ["preCheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PreCheckoutTransactionId")], [0, 1]],
      ["originUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "OriginUrl")], [0, 1]],
      ["returnUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "ReturnUrl")], [0, 1]],
      ["merchantCallbackUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCallbackUrl")], [0, 1]],
      ["queryString", ["SOAP::SOAPString", XSD::QName.new(nil, "QueryString")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MerchantParametersResponse,
    :schema_name => XSD::QName.new(nil, "MerchantParametersResponse"),
    :schema_element => [
      ["merchantParametersId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantParametersId")]],
      ["merchantCallbackUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCallbackUrl")]],
      ["returnUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "ReturnUrl")]],
      ["merchantSuppressSignUp", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantSuppressSignUp")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MerchantPermissionRequest,
    :schema_name => XSD::QName.new(nil, "MerchantPermissionRequest"),
    :schema_element => [
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]]
    ]
  )

  Registry.register(
    :class => MerchantPermissionResponseWrapper,
    :schema_name => XSD::QName.new(nil, "MerchantPermissionResponseWrapper"),
    :schema_element => [
      ["merchantPermissionResponse", ["MerchantPermissionResponse", XSD::QName.new(nil, "MerchantPermissionResponse")]]
    ]
  )

  Registry.register(
    :class => ShoppingCartResultsWrapper,
    :schema_name => XSD::QName.new(nil, "ShoppingCartResultsWrapper"),
    :schema_element => [
      ["shoppingCartResults", ["ShoppingCartResults", XSD::QName.new(nil, "ShoppingCartResults")]]
    ]
  )

  Registry.register(
    :class => UserLocaleWrapper,
    :schema_name => XSD::QName.new(nil, "UserLocaleWrapper"),
    :schema_element => [
      ["userLocale", ["UserLocale", XSD::QName.new(nil, "UserLocale")]]
    ]
  )

  Registry.register(
    :class => WalletProviderSearchResultsWrapper,
    :schema_name => XSD::QName.new(nil, "WalletProviderSearchResultsWrapper"),
    :schema_element => [
      ["walletProviderSearchResults", ["WalletProviderSearchResults", XSD::QName.new(nil, "WalletProviderSearchResults")]]
    ]
  )

  Registry.register(
    :class => ChainedTokenRequest,
    :schema_name => XSD::QName.new(nil, "ChainedTokenRequest"),
    :schema_element => [
      ["oAuthToken", ["SOAP::SOAPString", XSD::QName.new(nil, "OAuthToken")]],
      ["merchantCheckoutIdentifier", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutIdentifier")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ChainedTokenResponse,
    :schema_name => XSD::QName.new(nil, "ChainedTokenResponse"),
    :schema_element => [
      ["requestToken", ["SOAP::SOAPString", XSD::QName.new(nil, "RequestToken")]],
      ["verifierToken", ["SOAP::SOAPString", XSD::QName.new(nil, "VerifierToken")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectedMerchantsResponse,
    :schema_name => XSD::QName.new(nil, "ConnectedMerchantsResponse"),
    :schema_element => [
      ["merchants", ["Merchant[]", XSD::QName.new(nil, "Merchants")], [0, nil]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Address,
    :schema_name => XSD::QName.new(nil, "Address"),
    :schema_element => [
      ["line1", ["SOAP::SOAPString", XSD::QName.new(nil, "Line1")]],
      ["line2", ["SOAP::SOAPString", XSD::QName.new(nil, "Line2")], [0, 1]],
      ["line3", ["SOAP::SOAPString", XSD::QName.new(nil, "Line3")], [0, 1]],
      ["city", ["SOAP::SOAPString", XSD::QName.new(nil, "City")]],
      ["countrySubdivision", ["SOAP::SOAPString", XSD::QName.new(nil, "CountrySubdivision")], [0, 1]],
      ["postalCode", ["SOAP::SOAPString", XSD::QName.new(nil, "PostalCode")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")]]
    ]
  )

  Registry.register(
    :class => CardBrand,
    :schema_name => XSD::QName.new(nil, "CardBrand"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")]],
      ["acceptanceMarkLogo", ["Logo", XSD::QName.new(nil, "AcceptanceMarkLogo")]]
    ]
  )

  Registry.register(
    :class => CardBrands,
    :schema_name => XSD::QName.new(nil, "CardBrands"),
    :schema_element => [
      ["cardBrand", ["CardBrand[]", XSD::QName.new(nil, "CardBrand")], [1, nil]]
    ]
  )

  Registry.register(
    :class => CardBrandSearch,
    :schema_name => XSD::QName.new(nil, "CardBrandSearch"),
    :schema_element => [
      ["cardNumberPrefix", ["SOAP::SOAPString", XSD::QName.new(nil, "CardNumberPrefix")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CardSecurityRequired,
    :schema_name => XSD::QName.new(nil, "CardSecurityRequired"),
    :schema_element => [
      ["active", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Active")]],
      ["secureCodeCardSecurityDetails", ["SecureCodeCardSecurityDetails", XSD::QName.new(nil, "SecureCodeCardSecurityDetails")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CartItem,
    :schema_name => XSD::QName.new(nil, "CartItem"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
      ["quantity", ["SOAP::SOAPLong", XSD::QName.new(nil, "Quantity")]],
      ["unitPrice", ["SOAP::SOAPString", XSD::QName.new(nil, "UnitPrice")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Checkout,
    :schema_name => XSD::QName.new(nil, "Checkout"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "Id")]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")]],
      ["name", ["Name", XSD::QName.new(nil, "Name")]],
      ["paymentMethod", ["PaymentCard", XSD::QName.new(nil, "PaymentMethod")]],
      ["deliveryDestination", ["DeliveryDestination", XSD::QName.new(nil, "DeliveryDestination")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["loyaltyCard", ["LoyaltyCard", XSD::QName.new(nil, "LoyaltyCard")], [0, 1]],
      ["checkoutResourceUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "CheckoutResourceUrl")]],
      ["merchantCallbackUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCallbackUrl")]],
      ["checkoutPairingCallbackUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "CheckoutPairingCallbackUrl")]],
      ["verifierToken", ["SOAP::SOAPString", XSD::QName.new(nil, "VerifierToken")]]
    ]
  )

  Registry.register(
    :class => Connection,
    :schema_name => XSD::QName.new(nil, "Connection"),
    :schema_element => [
      ["connectionId", ["SOAP::SOAPLong", XSD::QName.new(nil, "ConnectionId")]],
      ["merchantName", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantName")]],
      ["connectionName", ["SOAP::SOAPString", XSD::QName.new(nil, "ConnectionName")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")]],
      ["dataTypes", ["DataTypes", XSD::QName.new(nil, "DataTypes")]],
      ["oneClickSupported", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OneClickSupported")]],
      ["oneClickEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "OneClickEnabled")]],
      ["lastUpdatedUsed", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "LastUpdatedUsed")]],
      ["connectedSinceDate", ["SOAP::SOAPString", XSD::QName.new(nil, "ConnectedSinceDate")]],
      ["expirationDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "ExpirationDate")]],
      ["merchantUrl", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "MerchantUrl")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectionList,
    :schema_name => XSD::QName.new(nil, "ConnectionList"),
    :schema_element => [
      ["connection", ["Connection[]", XSD::QName.new(nil, "Connection")], [0, nil]]
    ]
  )

  Registry.register(
    :class => ConnectionHistory,
    :schema_name => XSD::QName.new(nil, "ConnectionHistory"),
    :schema_element => [
      ["merchantInfo", ["MerchantInfo", XSD::QName.new(nil, "MerchantInfo")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ConnectionHistoryList,
    :schema_name => XSD::QName.new(nil, "ConnectionHistoryList"),
    :schema_element => [
      ["connectionHistory", ["ConnectionHistory[]", XSD::QName.new(nil, "ConnectionHistory")], [0, nil]]
    ]
  )

  Registry.register(
    :class => CookiePolicy,
    :schema_name => XSD::QName.new(nil, "CookiePolicy"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "Content")]],
      ["effectiveDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "EffectiveDate")]],
      ["explicit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Explicit")]],
      ["accepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Accepted")]]
    ]
  )

  Registry.register(
    :class => TermsOfUseUrls,
    :schema_name => XSD::QName.new(nil, "TermsOfUseUrls"),
    :schema_element => [
      ["localUrl", ["LocalUrl[]", XSD::QName.new(nil, "LocalUrl")], [0, nil]]
    ]
  )

  Registry.register(
    :class => LocalUrl,
    :schema_name => XSD::QName.new(nil, "LocalUrl"),
    :schema_element => [
      ["url", ["SOAP::SOAPString", XSD::QName.new(nil, "Url")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(nil, "Language")]],
      ["documentName", ["SOAP::SOAPString", XSD::QName.new(nil, "DocumentName")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PrivacyUrls,
    :schema_name => XSD::QName.new(nil, "PrivacyUrls"),
    :schema_element => [
      ["localUrl", ["LocalUrl[]", XSD::QName.new(nil, "LocalUrl")], [0, nil]]
    ]
  )

  Registry.register(
    :class => CookieNoticeUrls,
    :schema_name => XSD::QName.new(nil, "CookieNoticeUrls"),
    :schema_element => [
      ["localUrl", ["LocalUrl[]", XSD::QName.new(nil, "LocalUrl")], [0, nil]]
    ]
  )

  Registry.register(
    :class => Countries,
    :schema_name => XSD::QName.new(nil, "Countries"),
    :schema_element => [
      ["country", ["Country[]", XSD::QName.new(nil, "Country")], [0, nil]]
    ]
  )

  Registry.register(
    :class => Country,
    :schema_name => XSD::QName.new(nil, "Country"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["callingCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CallingCode")]],
      ["locale", ["Locale[]", XSD::QName.new(nil, "Locale")], [0, nil]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CountryCode,
    :schema_name => XSD::QName.new(nil, "CountryCode"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]]
    ]
  )

  Registry.register(
    :class => CountrySubdivision,
    :schema_name => XSD::QName.new(nil, "CountrySubdivision"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CountrySubdivisions,
    :schema_name => XSD::QName.new(nil, "CountrySubdivisions"),
    :schema_element => [
      ["countrySubdivision", ["CountrySubdivision[]", XSD::QName.new(nil, "CountrySubdivision")], [0, nil]]
    ]
  )

  Registry.register(
    :class => DataType,
    :schema_name => XSD::QName.new(nil, "DataType"),
    :schema_element => [
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")]]
    ]
  )

  Registry.register(
    :class => DataTypes,
    :schema_name => XSD::QName.new(nil, "DataTypes"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => DateOfBirth,
    :schema_name => XSD::QName.new(nil, "DateOfBirth"),
    :schema_element => [
      ["year", ["SOAP::SOAPInt", XSD::QName.new(nil, "Year")]],
      ["month", [nil, XSD::QName.new(nil, "Month")]],
      ["day", ["SOAP::SOAPInt", XSD::QName.new(nil, "Day")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => DeliveryDestination,
    :schema_name => XSD::QName.new(nil, "DeliveryDestination"),
    :schema_element => [
      ["shippingDestination", ["ShippingDestination", XSD::QName.new(nil, "ShippingDestination")], [0, 1]],
      ["emailDestination", ["SOAP::SOAPString", XSD::QName.new(nil, "EmailDestination")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Error,
    :schema_name => XSD::QName.new(nil, "Error"),
    :schema_element => [
      ["description", ["SOAP::SOAPString", XSD::QName.new(nil, "Description")]],
      ["reasonCode", ["SOAP::SOAPString", XSD::QName.new(nil, "ReasonCode")]],
      ["recoverable", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Recoverable")]],
      ["source", ["SOAP::SOAPString", XSD::QName.new(nil, "Source")]],
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
    :class => ExtensionPoint,
    :schema_name => XSD::QName.new(nil, "ExtensionPoint"),
    :schema_element => [
      ["any", [nil, XSD::QName.new(NsXMLSchema, "anyType")]]
    ]
  )

  Registry.register(
    :class => InvitationCodeCountries,
    :schema_name => XSD::QName.new(nil, "InvitationCodeCountries"),
    :schema_element => [
      ["country", ["Country[]", XSD::QName.new(nil, "Country")], [0, nil]]
    ]
  )

  Registry.register(
    :class => LegalNotice,
    :schema_name => XSD::QName.new(nil, "LegalNotice"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "Content")]],
      ["effectiveDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "EffectiveDate")]],
      ["explicit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Explicit")]],
      ["accepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Accepted")]]
    ]
  )

  Registry.register(
    :class => Locale,
    :schema_name => XSD::QName.new(nil, "Locale"),
    :schema_element => [
      ["locale", ["SOAP::SOAPString", XSD::QName.new(nil, "Locale")], [0, 1]],
      ["language", ["SOAP::SOAPString", XSD::QName.new(nil, "Language")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Locales,
    :schema_name => XSD::QName.new(nil, "Locales"),
    :schema_element => [
      ["locale", ["Locale[]", XSD::QName.new(nil, "Locale")], [0, nil]]
    ]
  )

  Registry.register(
    :class => Logo,
    :schema_name => XSD::QName.new(nil, "Logo"),
    :schema_element => [
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")]],
      ["height", ["SOAP::SOAPString", XSD::QName.new(nil, "Height")], [0, 1]],
      ["width", ["SOAP::SOAPString", XSD::QName.new(nil, "Width")], [0, 1]],
      ["backgroundColor", ["SOAP::SOAPString", XSD::QName.new(nil, "BackgroundColor")], [0, 1]],
      ["url", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "Url")], [0, 1]],
      ["longDescription", ["SOAP::SOAPString", XSD::QName.new(nil, "LongDescription")], [0, 1]],
      ["alternateText", ["SOAP::SOAPString", XSD::QName.new(nil, "AlternateText")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => LoyaltyBrand,
    :schema_name => XSD::QName.new(nil, "LoyaltyBrand"),
    :schema_element => [
      ["brandName", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandName")]],
      ["brandId", ["SOAP::SOAPString", XSD::QName.new(nil, "BrandId")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")]],
      ["country", ["SOAP::SOAPString", XSD::QName.new(nil, "Country")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => LoyaltyCard,
    :schema_name => XSD::QName.new(nil, "LoyaltyCard"),
    :schema_element => [
      ["loyaltyCardId", ["SOAP::SOAPLong", XSD::QName.new(nil, "LoyaltyCardId")]],
      ["loyaltyBrandId", ["SOAP::SOAPLong", XSD::QName.new(nil, "LoyaltyBrandId")]],
      ["membershipNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "MembershipNumber")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["expiryMonth", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryYear")], [0, 1]]
    ]
  )

  Registry.register(
    :class => LoyaltyCards,
    :schema_name => XSD::QName.new(nil, "LoyaltyCards"),
    :schema_element => [
      ["loyaltyCard", ["LoyaltyCard[]", XSD::QName.new(nil, "LoyaltyCard")], [1, nil]]
    ]
  )

  Registry.register(
    :class => Merchant,
    :schema_name => XSD::QName.new(nil, "Merchant"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["displayName", ["SOAP::SOAPString", XSD::QName.new(nil, "DisplayName")], [0, 1]],
      ["merchantType", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantType")], [0, 1]],
      ["productionUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "ProductionUrl")]],
      ["sandboxUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "SandboxUrl")]],
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => MobilePhone,
    :schema_name => XSD::QName.new(nil, "MobilePhone"),
    :schema_element => [
      ["countryCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryCode")]],
      ["phoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "PhoneNumber")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Name,
    :schema_name => XSD::QName.new(nil, "Name"),
    :schema_element => [
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "Prefix")], [0, 1]],
      ["first", ["SOAP::SOAPString", XSD::QName.new(nil, "First")]],
      ["middle", ["SOAP::SOAPString", XSD::QName.new(nil, "Middle")], [0, 1]],
      ["last", ["SOAP::SOAPString", XSD::QName.new(nil, "Last")]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "Suffix")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => NamePrefix,
    :schema_name => XSD::QName.new(nil, "NamePrefix"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => NamePrefixes,
    :schema_name => XSD::QName.new(nil, "NamePrefixes"),
    :schema_element => [
      ["namePrefix", ["NamePrefix[]", XSD::QName.new(nil, "NamePrefix")], [0, nil]]
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

  Registry.register(
    :class => PaymentCard,
    :schema_name => XSD::QName.new(nil, "PaymentCard"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "Id")]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")], [0, 1]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(nil, "Alias")], [0, 1]],
      ["verificationStatus", ["SOAP::SOAPString", XSD::QName.new(nil, "VerificationStatus")], [0, 1]],
      ["cardholderName", ["SOAP::SOAPString", XSD::QName.new(nil, "CardholderName")]],
      ["cardBrand", ["CardBrand", XSD::QName.new(nil, "CardBrand")]],
      ["directProvisionedSwitch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DirectProvisionedSwitch")], [0, 1]],
      ["accountNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "AccountNumber")], [0, 1]],
      ["maskedAccountNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "MaskedAccountNumber")], [0, 1]],
      ["expiryMonth", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryMonth")], [0, 1]],
      ["expiryYear", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpiryYear")], [0, 1]],
      ["securityCode", ["SOAP::SOAPString", XSD::QName.new(nil, "SecurityCode")], [0, 1]],
      ["phoneNumber", ["MobilePhone", XSD::QName.new(nil, "PhoneNumber")]],
      ["preferred", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Preferred")]],
      ["address", ["Address", XSD::QName.new(nil, "Address")]],
      ["issuer", ["Logo", XSD::QName.new(nil, "Issuer")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => PaymentCards,
    :schema_name => XSD::QName.new(nil, "PaymentCards"),
    :schema_element => [
      ["paymentCard", ["PaymentCard[]", XSD::QName.new(nil, "PaymentCard")], [0, nil]]
    ]
  )

  Registry.register(
    :class => PersonalGreeting,
    :schema_name => XSD::QName.new(nil, "PersonalGreeting"),
    :schema_element => [
      ["personalGreetingText", ["SOAP::SOAPString", XSD::QName.new(nil, "PersonalGreetingText")]],
      ["userAlias", ["SOAP::SOAPString", XSD::QName.new(nil, "UserAlias")]],
      ["userId", ["SOAP::SOAPString", XSD::QName.new(nil, "UserId")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Preferences,
    :schema_name => XSD::QName.new(nil, "Preferences"),
    :schema_element => [
      ["receiveEmailNotification", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReceiveEmailNotification")]],
      ["receiveMobileNotification", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ReceiveMobileNotification")]],
      ["personalizationOptIn", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PersonalizationOptIn")]]
    ]
  )

  Registry.register(
    :class => PrivacyPolicy,
    :schema_name => XSD::QName.new(nil, "PrivacyPolicy"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "Content")]],
      ["effectiveDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "EffectiveDate")]],
      ["explicit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Explicit")]],
      ["accepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Accepted")]]
    ]
  )

  Registry.register(
    :class => Profile,
    :schema_name => XSD::QName.new(nil, "Profile"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "Id")]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")]],
      ["emailAddress", [nil, XSD::QName.new(nil, "EmailAddress")]],
      ["mobilePhone", ["MobilePhone", XSD::QName.new(nil, "MobilePhone")]],
      ["name", ["ProfileName", XSD::QName.new(nil, "Name")]],
      ["preferences", ["Preferences", XSD::QName.new(nil, "Preferences")]],
      ["securityChallenge", ["SecurityChallenge[]", XSD::QName.new(nil, "SecurityChallenge")], [0, nil]],
      ["termsOfUseAccepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "TermsOfUseAccepted")]],
      ["privacyPolicyAccepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PrivacyPolicyAccepted")]],
      ["cookiePolicyAccepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "CookiePolicyAccepted")]],
      ["personalGreeting", ["PersonalGreeting", XSD::QName.new(nil, "PersonalGreeting")], [0, 1]],
      ["cSRFToken", ["SOAP::SOAPString", XSD::QName.new(nil, "CSRFToken")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["countryOfResidence", ["SOAP::SOAPString", XSD::QName.new(nil, "CountryOfResidence")]],
      ["locale", ["Locale", XSD::QName.new(nil, "Locale")]],
      ["dateOfBirth", ["DateOfBirth", XSD::QName.new(nil, "DateOfBirth")], [0, 1]],
      ["gender", ["Gender", XSD::QName.new(nil, "Gender")], [0, 1]],
      ["nationalId", ["SOAP::SOAPString", XSD::QName.new(nil, "NationalId")], [0, 1]],
      ["directProvisionedSwitch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DirectProvisionedSwitch")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ProfileName,
    :schema_name => XSD::QName.new(nil, "ProfileName"),
    :schema_element => [
      ["prefix", ["SOAP::SOAPString", XSD::QName.new(nil, "Prefix")], [0, 1]],
      ["first", ["SOAP::SOAPString", XSD::QName.new(nil, "First")]],
      ["middle", ["SOAP::SOAPString", XSD::QName.new(nil, "Middle")], [0, 1]],
      ["last", ["SOAP::SOAPString", XSD::QName.new(nil, "Last")]],
      ["suffix", ["SOAP::SOAPString", XSD::QName.new(nil, "Suffix")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(nil, "Alias")], [0, 1]]
    ]
  )

  Registry.register(
    :class => SecureCodeCardSecurityDetails,
    :schema_name => XSD::QName.new(nil, "SecureCodeCardSecurityDetails"),
    :schema_element => [
      ["lookupData", ["SOAP::SOAPString", XSD::QName.new(nil, "LookupData")]],
      ["authorizationUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "AuthorizationUrl")]],
      ["merchantData", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantData")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => SecurityChallenge,
    :schema_name => XSD::QName.new(nil, "SecurityChallenge"),
    :schema_element => [
      ["code", ["SOAP::SOAPString", XSD::QName.new(nil, "Code")]],
      ["question", ["SOAP::SOAPString", XSD::QName.new(nil, "Question")], [0, 1]],
      ["answer", ["SOAP::SOAPString", XSD::QName.new(nil, "Answer")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => SecurityChallenges,
    :schema_name => XSD::QName.new(nil, "SecurityChallenges"),
    :schema_element => [
      ["securityChallenge", ["SecurityChallenge[]", XSD::QName.new(nil, "SecurityChallenge")], [1, nil]]
    ]
  )

  Registry.register(
    :class => ShippingDestination,
    :schema_name => XSD::QName.new(nil, "ShippingDestination"),
    :schema_element => [
      ["id", ["SOAP::SOAPLong", XSD::QName.new(nil, "Id")]],
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")], [0, 1]],
      ["v_alias", ["SOAP::SOAPString", XSD::QName.new(nil, "Alias")], [0, 1]],
      ["recipientName", ["SOAP::SOAPString", XSD::QName.new(nil, "RecipientName")]],
      ["phoneNumber", ["MobilePhone", XSD::QName.new(nil, "PhoneNumber")], [0, 1]],
      ["preferred", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Preferred")]],
      ["address", ["Address", XSD::QName.new(nil, "Address")]],
      ["directProvisionedSwitch", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DirectProvisionedSwitch")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => ShippingDestinations,
    :schema_name => XSD::QName.new(nil, "ShippingDestinations"),
    :schema_element => [
      ["shippingDestination", ["ShippingDestination[]", XSD::QName.new(nil, "ShippingDestination")], [0, nil]]
    ]
  )

  Registry.register(
    :class => ShoppingCart,
    :schema_name => XSD::QName.new(nil, "ShoppingCart"),
    :schema_element => [
      ["cartTotal", ["SOAP::SOAPString", XSD::QName.new(nil, "CartTotal")]],
      ["currencyCode", ["SOAP::SOAPString", XSD::QName.new(nil, "CurrencyCode")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["cartItem", ["CartItem[]", XSD::QName.new(nil, "CartItem")], [0, nil]]
    ]
  )

  Registry.register(
    :class => TermsAndConditions,
    :schema_name => XSD::QName.new(nil, "TermsAndConditions"),
    :schema_element => [
      ["content", ["SOAP::SOAPString", XSD::QName.new(nil, "Content")]],
      ["effectiveDate", ["SOAP::SOAPDate", XSD::QName.new(nil, "EffectiveDate")]],
      ["explicit", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Explicit")]],
      ["accepted", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Accepted")]]
    ]
  )

  Registry.register(
    :class => ValidateSecurityChallenge,
    :schema_name => XSD::QName.new(nil, "ValidateSecurityChallenge"),
    :schema_element => [
      ["success", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "Success")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => WalletProvider,
    :schema_name => XSD::QName.new(nil, "WalletProvider"),
    :schema_element => [
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "Id")]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["countries", ["Countries", XSD::QName.new(nil, "Countries")]],
      ["logo", ["Logo", XSD::QName.new(nil, "Logo")], [0, 1]],
      ["displayRank", ["SOAP::SOAPLong", XSD::QName.new(nil, "DisplayRank")], [0, 1]],
      ["preferredFlag", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PreferredFlag")]],
      ["newFlag", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "NewFlag")]],
      ["lastUpdatedDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "LastUpdatedDate")]],
      ["lastTransactionDate", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "LastTransactionDate")], [0, 1]],
      ["encryptedUserId", ["SOAP::SOAPString", XSD::QName.new(nil, "EncryptedUserId")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]],
      ["walletProviderUrl", ["SOAP::SOAPAnyURI", XSD::QName.new(nil, "WalletProviderUrl")]],
      ["apiWallet", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ApiWallet")], [0, 1]],
      ["whiteLabelWallet", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "WhiteLabelWallet")], [0, 1]],
      ["termsOfUseUrls", ["TermsOfUseUrls", XSD::QName.new(nil, "TermsOfUseUrls")]],
      ["privacyUrls", ["PrivacyUrls", XSD::QName.new(nil, "PrivacyUrls")]],
      ["cookieNoticeUrls", ["CookieNoticeUrls", XSD::QName.new(nil, "CookieNoticeUrls")]],
      ["checkoutUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "CheckoutUrl")]],
      ["accountMaintenanceUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "AccountMaintenanceUrl")]],
      ["addCardUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "AddCardUrl")]],
      ["addAddressUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "AddAddressUrl")]],
      ["pairingUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "PairingUrl")]],
      ["registrationUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "RegistrationUrl")]],
      ["logoutUrl", ["SOAP::SOAPString", XSD::QName.new(nil, "LogoutUrl")]],
      ["customerServicePhoneNumber", ["SOAP::SOAPString", XSD::QName.new(nil, "CustomerServicePhoneNumber")], [0, 1]],
      ["connectEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ConnectEnabled")]],
      ["expressCheckoutEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "ExpressCheckoutEnabled")]],
      ["invitationCodeCountries", ["InvitationCodeCountries", XSD::QName.new(nil, "InvitationCodeCountries")]],
      ["pLDPWallet", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "PLDPWallet")], [0, 1]],
      ["mLDPWallet", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "MLDPWallet")], [0, 1]],
      ["lightboxEnabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "LightboxEnabled")]],
      ["lightboxVersion", ["SOAP::SOAPLong", XSD::QName.new(nil, "LightboxVersion")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Response,
    :schema_name => XSD::QName.new(nil, "Response"),
    :schema_element => [
      ["message", ["SOAP::SOAPString", XSD::QName.new(nil, "Message")], [0, 1]],
      ["errors", ["Errors", XSD::QName.new(nil, "Errors")], [0, 1]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => TransactionDetails,
    :schema_name => XSD::QName.new(nil, "TransactionDetails"),
    :schema_element => [
      ["transactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "TransactionId")]],
      ["widgetCode", ["SOAP::SOAPString", XSD::QName.new(nil, "WidgetCode")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CheckoutSelection,
    :schema_name => XSD::QName.new(nil, "CheckoutSelection"),
    :schema_element => [
      ["shippingDestinationId", ["SOAP::SOAPLong", XSD::QName.new(nil, "ShippingDestinationId")], [0, 1]],
      ["paymentCardId", ["SOAP::SOAPLong", XSD::QName.new(nil, "PaymentCardId")], [0, 1]],
      ["loyaltyCardId", ["SOAP::SOAPLong", XSD::QName.new(nil, "LoyaltyCardId")], [0, 1]],
      ["precheckoutTransactionId", ["SOAP::SOAPString", XSD::QName.new(nil, "PrecheckoutTransactionId")]],
      ["digitalGoods", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "DigitalGoods")]],
      ["merchantCheckoutId", ["SOAP::SOAPString", XSD::QName.new(nil, "MerchantCheckoutId")]],
      ["timeStamp", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "TimeStamp")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => CheckoutWrapper,
    :schema_name => XSD::QName.new(nil, "CheckoutWrapper"),
    :schema_element => [
      ["checkout", ["Checkout", XSD::QName.new(nil, "Checkout")]]
    ]
  )

  Registry.register(
    :class => ErrorWrapper,
    :schema_name => XSD::QName.new(nil, "ErrorWrapper"),
    :schema_element => [
      ["error", ["Error", XSD::QName.new(nil, "Error")]]
    ]
  )

  Registry.register(
    :class => LoyaltyBrandWrapper,
    :schema_name => XSD::QName.new(nil, "LoyaltyBrandWrapper"),
    :schema_element => [
      ["loyaltyBrand", ["LoyaltyBrand", XSD::QName.new(nil, "LoyaltyBrand")]]
    ]
  )

  Registry.register(
    :class => LoyaltyCardWrapper,
    :schema_name => XSD::QName.new(nil, "LoyaltyCardWrapper"),
    :schema_element => [
      ["loyaltyCard", ["LoyaltyCard", XSD::QName.new(nil, "LoyaltyCard")]]
    ]
  )

  Registry.register(
    :class => MerchantWrapper,
    :schema_name => XSD::QName.new(nil, "MerchantWrapper"),
    :schema_element => [
      ["merchant", ["Merchant", XSD::QName.new(nil, "Merchant")]]
    ]
  )

  Registry.register(
    :class => NamePrefixWrapper,
    :schema_name => XSD::QName.new(nil, "NamePrefixWrapper"),
    :schema_element => [
      ["namePrefix", ["NamePrefix", XSD::QName.new(nil, "NamePrefix")]]
    ]
  )

  Registry.register(
    :class => PairingDataTypeWrapper,
    :schema_name => XSD::QName.new(nil, "PairingDataTypeWrapper"),
    :schema_element => [
      ["pairingDataType", ["PairingDataType", XSD::QName.new(nil, "PairingDataType")]]
    ]
  )

  Registry.register(
    :class => PaymentCardWrapper,
    :schema_name => XSD::QName.new(nil, "PaymentCardWrapper"),
    :schema_element => [
      ["paymentCard", ["PaymentCard", XSD::QName.new(nil, "PaymentCard")]]
    ]
  )

  Registry.register(
    :class => PersonalGreetingWrapper,
    :schema_name => XSD::QName.new(nil, "PersonalGreetingWrapper"),
    :schema_element => [
      ["personalGreeting", ["PersonalGreeting", XSD::QName.new(nil, "PersonalGreeting")]]
    ]
  )

  Registry.register(
    :class => ProfileWrapper,
    :schema_name => XSD::QName.new(nil, "ProfileWrapper"),
    :schema_element => [
      ["profile", ["Profile", XSD::QName.new(nil, "Profile")]]
    ]
  )

  Registry.register(
    :class => ResponseWrapper,
    :schema_name => XSD::QName.new(nil, "ResponseWrapper"),
    :schema_element => [
      ["response", ["Response", XSD::QName.new(nil, "Response")]]
    ]
  )

  Registry.register(
    :class => SecurityChallengeWrapper,
    :schema_name => XSD::QName.new(nil, "SecurityChallengeWrapper"),
    :schema_element => [
      ["securityChallenge", ["SecurityChallenge", XSD::QName.new(nil, "SecurityChallenge")]]
    ]
  )

  Registry.register(
    :class => ShippingDestinationWrapper,
    :schema_name => XSD::QName.new(nil, "ShippingDestinationWrapper"),
    :schema_element => [
      ["shippingDestination", ["ShippingDestination", XSD::QName.new(nil, "ShippingDestination")]]
    ]
  )

  Registry.register(
    :class => ValidateSecurityChallengeWrapper,
    :schema_name => XSD::QName.new(nil, "ValidateSecurityChallengeWrapper"),
    :schema_element => [
      ["validateSecurityChallenge", ["ValidateSecurityChallenge", XSD::QName.new(nil, "ValidateSecurityChallenge")]]
    ]
  )

  Registry.register(
    :class => WalletProviderWrapper,
    :schema_name => XSD::QName.new(nil, "WalletProviderWrapper"),
    :schema_element => [
      ["walletProvider", ["WalletProvider", XSD::QName.new(nil, "WalletProvider")]]
    ]
  )

  Registry.register(
    :class => WalletWrapper,
    :schema_name => XSD::QName.new(nil, "WalletWrapper"),
    :schema_element => [
      ["wallet", ["Wallet", XSD::QName.new(nil, "Wallet")]]
    ]
  )

  Registry.register(
    :class => Wallet,
    :schema_name => XSD::QName.new(nil, "Wallet"),
    :schema_element => [
      ["ref", ["SOAP::SOAPString", XSD::QName.new(nil, "Ref")], [0, 1]],
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["extensionPoint", ["ExtensionPoint", XSD::QName.new(nil, "ExtensionPoint")], [0, 1]]
    ]
  )

  Registry.register(
    :class => Activity,
    :schema_name => XSD::QName.new(nil, "Activity"),
    :schema_element => [
      ["date", ["SOAP::SOAPDateTime", XSD::QName.new(nil, "Date")]],
      ["expressCheckout", ["SOAP::SOAPString", XSD::QName.new(nil, "ExpressCheckout")]],
      ["pairing", ["SOAP::SOAPString", XSD::QName.new(nil, "Pairing")]],
      ["pairingDataType", ["PairingDataType", XSD::QName.new(nil, "PairingDataType")]],
      ["precheckoutDataType", ["PairingDataType", XSD::QName.new(nil, "PrecheckoutDataType")]]
    ]
  )

  Registry.register(
    :class => MerchantInfoList,
    :schema_name => XSD::QName.new(nil, "MerchantInfoList"),
    :schema_element => [
      ["merchantInfo", ["MerchantInfo[]", XSD::QName.new(nil, "MerchantInfo")], [0, nil]]
    ]
  )

  Registry.register(
    :class => MerchantInfo,
    :schema_name => XSD::QName.new(nil, "MerchantInfo"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "Name")]],
      ["id", ["SOAP::SOAPString", XSD::QName.new(nil, "Id")]],
      ["type", ["SOAP::SOAPString", XSD::QName.new(nil, "Type")]],
      ["activityList", ["ActivityList", XSD::QName.new(nil, "ActivityList")]]
    ]
  )

  Registry.register(
    :class => ActivityList,
    :schema_name => XSD::QName.new(nil, "ActivityList"),
    :schema_element => [
      ["activity", ["Activity[]", XSD::QName.new(nil, "Activity")], [0, nil]]
    ]
  )
end
