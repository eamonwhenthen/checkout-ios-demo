// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct AuthorisedPaymentInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - transactionId
  ///   - orderId
  ///   - flowId
  ///   - intentId
  ///   - currencyCode
  ///   - amount
  ///   - paymentMethod
  ///   - customer
  ///   - description
  ///   - metadata
  ///   - perform3DSecure
  ///   - apmRedirectUrl
  ///   - fraud
  public init(transactionId: Swift.Optional<String?> = nil, orderId: Swift.Optional<String?> = nil, flowId: Swift.Optional<String?> = nil, intentId: Swift.Optional<String?> = nil, currencyCode: Swift.Optional<String?> = nil, amount: Swift.Optional<String?> = nil, paymentMethod: PaymentMethodDtoInput, customer: Swift.Optional<PaymentMethodCustomerDtoInput?> = nil, description: Swift.Optional<String?> = nil, metadata: Swift.Optional<String?> = nil, perform3DSecure: Swift.Optional<ThreeDSecureDtoInput?> = nil, apmRedirectUrl: Swift.Optional<String?> = nil, fraud: Swift.Optional<String?> = nil) {
    graphQLMap = ["transactionId": transactionId, "orderId": orderId, "flowId": flowId, "intentId": intentId, "currencyCode": currencyCode, "amount": amount, "paymentMethod": paymentMethod, "customer": customer, "description": description, "metadata": metadata, "perform3DSecure": perform3DSecure, "apmRedirectUrl": apmRedirectUrl, "fraud": fraud]
  }

  public var transactionId: Swift.Optional<String?> {
    get {
      return graphQLMap["transactionId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "transactionId")
    }
  }

  public var orderId: Swift.Optional<String?> {
    get {
      return graphQLMap["orderId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "orderId")
    }
  }

  public var flowId: Swift.Optional<String?> {
    get {
      return graphQLMap["flowId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "flowId")
    }
  }

  public var intentId: Swift.Optional<String?> {
    get {
      return graphQLMap["intentId"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "intentId")
    }
  }

  public var currencyCode: Swift.Optional<String?> {
    get {
      return graphQLMap["currencyCode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "currencyCode")
    }
  }

  public var amount: Swift.Optional<String?> {
    get {
      return graphQLMap["amount"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "amount")
    }
  }

  public var paymentMethod: PaymentMethodDtoInput {
    get {
      return graphQLMap["paymentMethod"] as! PaymentMethodDtoInput
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "paymentMethod")
    }
  }

  public var customer: Swift.Optional<PaymentMethodCustomerDtoInput?> {
    get {
      return graphQLMap["customer"] as? Swift.Optional<PaymentMethodCustomerDtoInput?> ?? Swift.Optional<PaymentMethodCustomerDtoInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "customer")
    }
  }

  public var description: Swift.Optional<String?> {
    get {
      return graphQLMap["description"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var metadata: Swift.Optional<String?> {
    get {
      return graphQLMap["metadata"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "metadata")
    }
  }

  public var perform3DSecure: Swift.Optional<ThreeDSecureDtoInput?> {
    get {
      return graphQLMap["perform3DSecure"] as? Swift.Optional<ThreeDSecureDtoInput?> ?? Swift.Optional<ThreeDSecureDtoInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "perform3DSecure")
    }
  }

  public var apmRedirectUrl: Swift.Optional<String?> {
    get {
      return graphQLMap["apmRedirectUrl"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "apmRedirectUrl")
    }
  }

  public var fraud: Swift.Optional<String?> {
    get {
      return graphQLMap["fraud"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "fraud")
    }
  }
}

public struct PaymentMethodDtoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - type
  ///   - token
  ///   - walletToken
  ///   - card
  ///   - googlePay
  public init(type: String, token: Swift.Optional<String?> = nil, walletToken: Swift.Optional<String?> = nil, card: Swift.Optional<CardDtoInput?> = nil, googlePay: Swift.Optional<GooglePayInput?> = nil) {
    graphQLMap = ["type": type, "token": token, "walletToken": walletToken, "card": card, "googlePay": googlePay]
  }

  public var type: String {
    get {
      return graphQLMap["type"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var token: Swift.Optional<String?> {
    get {
      return graphQLMap["token"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "token")
    }
  }

  public var walletToken: Swift.Optional<String?> {
    get {
      return graphQLMap["walletToken"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "walletToken")
    }
  }

  public var card: Swift.Optional<CardDtoInput?> {
    get {
      return graphQLMap["card"] as? Swift.Optional<CardDtoInput?> ?? Swift.Optional<CardDtoInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "card")
    }
  }

  public var googlePay: Swift.Optional<GooglePayInput?> {
    get {
      return graphQLMap["googlePay"] as? Swift.Optional<GooglePayInput?> ?? Swift.Optional<GooglePayInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "googlePay")
    }
  }
}

public struct CardDtoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - number
  ///   - expMonth
  ///   - expYear
  ///   - cvc
  ///   - name
  ///   - address
  public init(number: Swift.Optional<String?> = nil, expMonth: Int, expYear: Int, cvc: Swift.Optional<String?> = nil, name: Swift.Optional<String?> = nil, address: Swift.Optional<AddressDtoInput?> = nil) {
    graphQLMap = ["number": number, "expMonth": expMonth, "expYear": expYear, "cvc": cvc, "name": name, "address": address]
  }

  public var number: Swift.Optional<String?> {
    get {
      return graphQLMap["number"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "number")
    }
  }

  public var expMonth: Int {
    get {
      return graphQLMap["expMonth"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "expMonth")
    }
  }

  public var expYear: Int {
    get {
      return graphQLMap["expYear"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "expYear")
    }
  }

  public var cvc: Swift.Optional<String?> {
    get {
      return graphQLMap["cvc"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "cvc")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var address: Swift.Optional<AddressDtoInput?> {
    get {
      return graphQLMap["address"] as? Swift.Optional<AddressDtoInput?> ?? Swift.Optional<AddressDtoInput?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "address")
    }
  }
}

public struct AddressDtoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - line1
  ///   - line2
  ///   - city
  ///   - postalCode
  ///   - state
  ///   - country
  public init(line1: Swift.Optional<String?> = nil, line2: Swift.Optional<String?> = nil, city: Swift.Optional<String?> = nil, postalCode: Swift.Optional<String?> = nil, state: Swift.Optional<String?> = nil, country: Swift.Optional<String?> = nil) {
    graphQLMap = ["line1": line1, "line2": line2, "city": city, "postalCode": postalCode, "state": state, "country": country]
  }

  public var line1: Swift.Optional<String?> {
    get {
      return graphQLMap["line1"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "line1")
    }
  }

  public var line2: Swift.Optional<String?> {
    get {
      return graphQLMap["line2"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "line2")
    }
  }

  public var city: Swift.Optional<String?> {
    get {
      return graphQLMap["city"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "city")
    }
  }

  public var postalCode: Swift.Optional<String?> {
    get {
      return graphQLMap["postalCode"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "postalCode")
    }
  }

  public var state: Swift.Optional<String?> {
    get {
      return graphQLMap["state"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "state")
    }
  }

  public var country: Swift.Optional<String?> {
    get {
      return graphQLMap["country"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "country")
    }
  }
}

public struct GooglePayInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - transactionId
  public init(transactionId: String) {
    graphQLMap = ["transactionId": transactionId]
  }

  public var transactionId: String {
    get {
      return graphQLMap["transactionId"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "transactionId")
    }
  }
}

public struct PaymentMethodCustomerDtoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - id
  ///   - email
  ///   - name
  public init(id: Swift.Optional<String?> = nil, email: Swift.Optional<String?> = nil, name: Swift.Optional<String?> = nil) {
    graphQLMap = ["id": id, "email": email, "name": name]
  }

  public var id: Swift.Optional<String?> {
    get {
      return graphQLMap["id"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "id")
    }
  }

  public var email: Swift.Optional<String?> {
    get {
      return graphQLMap["email"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "email")
    }
  }

  public var name: Swift.Optional<String?> {
    get {
      return graphQLMap["name"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }
}

public struct ThreeDSecureDtoInput: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - redirectUrl
  public init(redirectUrl: Swift.Optional<String?> = nil) {
    graphQLMap = ["redirectUrl": redirectUrl]
  }

  public var redirectUrl: Swift.Optional<String?> {
    get {
      return graphQLMap["redirectUrl"] as? Swift.Optional<String?> ?? Swift.Optional<String?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "redirectUrl")
    }
  }
}

public enum PaymentStatus: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case active
  case inactive
  case authorised
  case succeeded
  case refunded
  case partialRefunded
  case cancelled
  case failed
  case declined
  case disputed
  case removed
  case needs_3DSecure
  case needsApmAuthorization
  case gatewayHold
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ACTIVE": self = .active
      case "INACTIVE": self = .inactive
      case "AUTHORISED": self = .authorised
      case "SUCCEEDED": self = .succeeded
      case "REFUNDED": self = .refunded
      case "PARTIAL_REFUNDED": self = .partialRefunded
      case "CANCELLED": self = .cancelled
      case "FAILED": self = .failed
      case "DECLINED": self = .declined
      case "DISPUTED": self = .disputed
      case "REMOVED": self = .removed
      case "NEEDS_3D_SECURE": self = .needs_3DSecure
      case "NEEDS_APM_AUTHORIZATION": self = .needsApmAuthorization
      case "GATEWAY_HOLD": self = .gatewayHold
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .active: return "ACTIVE"
      case .inactive: return "INACTIVE"
      case .authorised: return "AUTHORISED"
      case .succeeded: return "SUCCEEDED"
      case .refunded: return "REFUNDED"
      case .partialRefunded: return "PARTIAL_REFUNDED"
      case .cancelled: return "CANCELLED"
      case .failed: return "FAILED"
      case .declined: return "DECLINED"
      case .disputed: return "DISPUTED"
      case .removed: return "REMOVED"
      case .needs_3DSecure: return "NEEDS_3D_SECURE"
      case .needsApmAuthorization: return "NEEDS_APM_AUTHORIZATION"
      case .gatewayHold: return "GATEWAY_HOLD"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PaymentStatus, rhs: PaymentStatus) -> Bool {
    switch (lhs, rhs) {
      case (.active, .active): return true
      case (.inactive, .inactive): return true
      case (.authorised, .authorised): return true
      case (.succeeded, .succeeded): return true
      case (.refunded, .refunded): return true
      case (.partialRefunded, .partialRefunded): return true
      case (.cancelled, .cancelled): return true
      case (.failed, .failed): return true
      case (.declined, .declined): return true
      case (.disputed, .disputed): return true
      case (.removed, .removed): return true
      case (.needs_3DSecure, .needs_3DSecure): return true
      case (.needsApmAuthorization, .needsApmAuthorization): return true
      case (.gatewayHold, .gatewayHold): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PaymentStatus] {
    return [
      .active,
      .inactive,
      .authorised,
      .succeeded,
      .refunded,
      .partialRefunded,
      .cancelled,
      .failed,
      .declined,
      .disputed,
      .removed,
      .needs_3DSecure,
      .needsApmAuthorization,
      .gatewayHold,
    ]
  }
}

public final class AuthorizePaymentMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation authorizePayment($authorisePayment: AuthorisedPaymentInput!) {
      authorizePayment(authorisePayment: $authorisePayment) {
        __typename
        id
        status
      }
    }
    """

  public let operationName: String = "authorizePayment"

  public var authorisePayment: AuthorisedPaymentInput

  public init(authorisePayment: AuthorisedPaymentInput) {
    self.authorisePayment = authorisePayment
  }

  public var variables: GraphQLMap? {
    return ["authorisePayment": authorisePayment]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("authorizePayment", arguments: ["authorisePayment": GraphQLVariable("authorisePayment")], type: .object(AuthorizePayment.selections)),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(authorizePayment: AuthorizePayment? = nil) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "authorizePayment": authorizePayment.flatMap { (value: AuthorizePayment) -> ResultMap in value.resultMap }])
    }

    public var authorizePayment: AuthorizePayment? {
      get {
        return (resultMap["authorizePayment"] as? ResultMap).flatMap { AuthorizePayment(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "authorizePayment")
      }
    }

    public struct AuthorizePayment: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Payment"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("status", type: .scalar(PaymentStatus.self)),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID, status: PaymentStatus? = nil) {
        self.init(unsafeResultMap: ["__typename": "Payment", "id": id, "status": status])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var status: PaymentStatus? {
        get {
          return resultMap["status"] as? PaymentStatus
        }
        set {
          resultMap.updateValue(newValue, forKey: "status")
        }
      }
    }
  }
}
