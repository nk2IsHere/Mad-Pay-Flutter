// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: apple.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

enum Apple_MerchantCapabilities: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case threeds // = 0
  case credit // = 1
  case debit // = 2
  case emv // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .threeds
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .threeds
    case 1: self = .credit
    case 2: self = .debit
    case 3: self = .emv
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .threeds: return 0
    case .credit: return 1
    case .debit: return 2
    case .emv: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Apple_MerchantCapabilities: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Apple_MerchantCapabilities] = [
    .threeds,
    .credit,
    .debit,
    .emv,
  ]
}

#endif  // swift(>=4.2)

enum Apple_ShippingType: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case delivery // = 0
  case servicePickup // = 1
  case shipping // = 2
  case storePickup // = 3
  case UNRECOGNIZED(Int)

  init() {
    self = .delivery
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 0: self = .delivery
    case 1: self = .servicePickup
    case 2: self = .shipping
    case 3: self = .storePickup
    default: self = .UNRECOGNIZED(rawValue)
    }
  }

  var rawValue: Int {
    switch self {
    case .delivery: return 0
    case .servicePickup: return 1
    case .shipping: return 2
    case .storePickup: return 3
    case .UNRECOGNIZED(let i): return i
    }
  }

}

#if swift(>=4.2)

extension Apple_ShippingType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [Apple_ShippingType] = [
    .delivery,
    .servicePickup,
    .shipping,
    .storePickup,
  ]
}

#endif  // swift(>=4.2)

struct Apple_AppleParameters {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var merchantIdentifier: String {
    get {return _storage._merchantIdentifier}
    set {_uniqueStorage()._merchantIdentifier = newValue}
  }

  var merchantCapabilities: Apple_MerchantCapabilities {
    get {return _storage._merchantCapabilities}
    set {_uniqueStorage()._merchantCapabilities = newValue}
  }

  var supportedCountries: [String] {
    get {return _storage._supportedCountries}
    set {_uniqueStorage()._supportedCountries = newValue}
  }

  var requiredBillingContactFields: [String] {
    get {return _storage._requiredBillingContactFields}
    set {_uniqueStorage()._requiredBillingContactFields = newValue}
  }

  var requiredShippingContactFields: [String] {
    get {return _storage._requiredShippingContactFields}
    set {_uniqueStorage()._requiredShippingContactFields = newValue}
  }

  var billingContact: Apple_Contact {
    get {return _storage._billingContact ?? Apple_Contact()}
    set {_uniqueStorage()._billingContact = newValue}
  }
  /// Returns true if `billingContact` has been explicitly set.
  var hasBillingContact: Bool {return _storage._billingContact != nil}
  /// Clears the value of `billingContact`. Subsequent reads from it will return its default value.
  mutating func clearBillingContact() {_uniqueStorage()._billingContact = nil}

  var shippingContact: Apple_Contact {
    get {return _storage._shippingContact ?? Apple_Contact()}
    set {_uniqueStorage()._shippingContact = newValue}
  }
  /// Returns true if `shippingContact` has been explicitly set.
  var hasShippingContact: Bool {return _storage._shippingContact != nil}
  /// Clears the value of `shippingContact`. Subsequent reads from it will return its default value.
  mutating func clearShippingContact() {_uniqueStorage()._shippingContact = nil}

  var shippingMethods: [Apple_ShippingMethod] {
    get {return _storage._shippingMethods}
    set {_uniqueStorage()._shippingMethods = newValue}
  }

  var shippingType: Apple_ShippingType {
    get {return _storage._shippingType}
    set {_uniqueStorage()._shippingType = newValue}
  }

  var applicationData: Data {
    get {return _storage._applicationData}
    set {_uniqueStorage()._applicationData = newValue}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Apple_Contact {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var emailAddres: String = String()

  var name: Apple_PersonNameComponents {
    get {return _name ?? Apple_PersonNameComponents()}
    set {_name = newValue}
  }
  /// Returns true if `name` has been explicitly set.
  var hasName: Bool {return self._name != nil}
  /// Clears the value of `name`. Subsequent reads from it will return its default value.
  mutating func clearName() {self._name = nil}

  var phoneNumber: String = String()

  var postalAddress: Apple_PostalAddress {
    get {return _postalAddress ?? Apple_PostalAddress()}
    set {_postalAddress = newValue}
  }
  /// Returns true if `postalAddress` has been explicitly set.
  var hasPostalAddress: Bool {return self._postalAddress != nil}
  /// Clears the value of `postalAddress`. Subsequent reads from it will return its default value.
  mutating func clearPostalAddress() {self._postalAddress = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _name: Apple_PersonNameComponents? = nil
  fileprivate var _postalAddress: Apple_PostalAddress? = nil
}

struct Apple_PersonNameComponents {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var namePrefix: String {
    get {return _storage._namePrefix}
    set {_uniqueStorage()._namePrefix = newValue}
  }

  var givenName: String {
    get {return _storage._givenName}
    set {_uniqueStorage()._givenName = newValue}
  }

  var middleName: String {
    get {return _storage._middleName}
    set {_uniqueStorage()._middleName = newValue}
  }

  var familyName: String {
    get {return _storage._familyName}
    set {_uniqueStorage()._familyName = newValue}
  }

  var nameSuffix: String {
    get {return _storage._nameSuffix}
    set {_uniqueStorage()._nameSuffix = newValue}
  }

  var nickname: String {
    get {return _storage._nickname}
    set {_uniqueStorage()._nickname = newValue}
  }

  var phoneticRepresentation: Apple_PersonNameComponents {
    get {return _storage._phoneticRepresentation ?? Apple_PersonNameComponents()}
    set {_uniqueStorage()._phoneticRepresentation = newValue}
  }
  /// Returns true if `phoneticRepresentation` has been explicitly set.
  var hasPhoneticRepresentation: Bool {return _storage._phoneticRepresentation != nil}
  /// Clears the value of `phoneticRepresentation`. Subsequent reads from it will return its default value.
  mutating func clearPhoneticRepresentation() {_uniqueStorage()._phoneticRepresentation = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct Apple_PostalAddress {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var street: String = String()

  var city: String = String()

  var state: String = String()

  var postalCode: String = String()

  var country: String = String()

  var isoCountryCode: String = String()

  var subAdministrativeArea: String = String()

  var subLocality: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Apple_ShippingMethod {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var name: String = String()

  var price: Double = 0

  var identifier: String = String()

  var detail: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "apple"

extension Apple_MerchantCapabilities: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "THREEDS"),
    1: .same(proto: "CREDIT"),
    2: .same(proto: "DEBIT"),
    3: .same(proto: "EMV"),
  ]
}

extension Apple_ShippingType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "DELIVERY"),
    1: .same(proto: "SERVICE_PICKUP"),
    2: .same(proto: "SHIPPING"),
    3: .same(proto: "STORE_PICKUP"),
  ]
}

extension Apple_AppleParameters: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".AppleParameters"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "merchant_identifier"),
    2: .standard(proto: "merchant_capabilities"),
    3: .standard(proto: "supported_countries"),
    4: .standard(proto: "required_billing_contact_fields"),
    5: .standard(proto: "required_shipping_contact_fields"),
    6: .standard(proto: "billing_contact"),
    7: .standard(proto: "shipping_contact"),
    8: .standard(proto: "shipping_methods"),
    9: .standard(proto: "shipping_type"),
    10: .standard(proto: "application_data"),
  ]

  fileprivate class _StorageClass {
    var _merchantIdentifier: String = String()
    var _merchantCapabilities: Apple_MerchantCapabilities = .threeds
    var _supportedCountries: [String] = []
    var _requiredBillingContactFields: [String] = []
    var _requiredShippingContactFields: [String] = []
    var _billingContact: Apple_Contact? = nil
    var _shippingContact: Apple_Contact? = nil
    var _shippingMethods: [Apple_ShippingMethod] = []
    var _shippingType: Apple_ShippingType = .delivery
    var _applicationData: Data = Data()

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _merchantIdentifier = source._merchantIdentifier
      _merchantCapabilities = source._merchantCapabilities
      _supportedCountries = source._supportedCountries
      _requiredBillingContactFields = source._requiredBillingContactFields
      _requiredShippingContactFields = source._requiredShippingContactFields
      _billingContact = source._billingContact
      _shippingContact = source._shippingContact
      _shippingMethods = source._shippingMethods
      _shippingType = source._shippingType
      _applicationData = source._applicationData
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._merchantIdentifier) }()
        case 2: try { try decoder.decodeSingularEnumField(value: &_storage._merchantCapabilities) }()
        case 3: try { try decoder.decodeRepeatedStringField(value: &_storage._supportedCountries) }()
        case 4: try { try decoder.decodeRepeatedStringField(value: &_storage._requiredBillingContactFields) }()
        case 5: try { try decoder.decodeRepeatedStringField(value: &_storage._requiredShippingContactFields) }()
        case 6: try { try decoder.decodeSingularMessageField(value: &_storage._billingContact) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._shippingContact) }()
        case 8: try { try decoder.decodeRepeatedMessageField(value: &_storage._shippingMethods) }()
        case 9: try { try decoder.decodeSingularEnumField(value: &_storage._shippingType) }()
        case 10: try { try decoder.decodeSingularBytesField(value: &_storage._applicationData) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._merchantIdentifier.isEmpty {
        try visitor.visitSingularStringField(value: _storage._merchantIdentifier, fieldNumber: 1)
      }
      if _storage._merchantCapabilities != .threeds {
        try visitor.visitSingularEnumField(value: _storage._merchantCapabilities, fieldNumber: 2)
      }
      if !_storage._supportedCountries.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._supportedCountries, fieldNumber: 3)
      }
      if !_storage._requiredBillingContactFields.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._requiredBillingContactFields, fieldNumber: 4)
      }
      if !_storage._requiredShippingContactFields.isEmpty {
        try visitor.visitRepeatedStringField(value: _storage._requiredShippingContactFields, fieldNumber: 5)
      }
      if let v = _storage._billingContact {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 6)
      }
      if let v = _storage._shippingContact {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
      if !_storage._shippingMethods.isEmpty {
        try visitor.visitRepeatedMessageField(value: _storage._shippingMethods, fieldNumber: 8)
      }
      if _storage._shippingType != .delivery {
        try visitor.visitSingularEnumField(value: _storage._shippingType, fieldNumber: 9)
      }
      if !_storage._applicationData.isEmpty {
        try visitor.visitSingularBytesField(value: _storage._applicationData, fieldNumber: 10)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apple_AppleParameters, rhs: Apple_AppleParameters) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._merchantIdentifier != rhs_storage._merchantIdentifier {return false}
        if _storage._merchantCapabilities != rhs_storage._merchantCapabilities {return false}
        if _storage._supportedCountries != rhs_storage._supportedCountries {return false}
        if _storage._requiredBillingContactFields != rhs_storage._requiredBillingContactFields {return false}
        if _storage._requiredShippingContactFields != rhs_storage._requiredShippingContactFields {return false}
        if _storage._billingContact != rhs_storage._billingContact {return false}
        if _storage._shippingContact != rhs_storage._shippingContact {return false}
        if _storage._shippingMethods != rhs_storage._shippingMethods {return false}
        if _storage._shippingType != rhs_storage._shippingType {return false}
        if _storage._applicationData != rhs_storage._applicationData {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_Contact: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Contact"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "email_addres"),
    2: .same(proto: "name"),
    3: .standard(proto: "phone_number"),
    4: .standard(proto: "postal_address"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.emailAddres) }()
      case 2: try { try decoder.decodeSingularMessageField(value: &self._name) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.phoneNumber) }()
      case 4: try { try decoder.decodeSingularMessageField(value: &self._postalAddress) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.emailAddres.isEmpty {
      try visitor.visitSingularStringField(value: self.emailAddres, fieldNumber: 1)
    }
    if let v = self._name {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }
    if !self.phoneNumber.isEmpty {
      try visitor.visitSingularStringField(value: self.phoneNumber, fieldNumber: 3)
    }
    if let v = self._postalAddress {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apple_Contact, rhs: Apple_Contact) -> Bool {
    if lhs.emailAddres != rhs.emailAddres {return false}
    if lhs._name != rhs._name {return false}
    if lhs.phoneNumber != rhs.phoneNumber {return false}
    if lhs._postalAddress != rhs._postalAddress {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_PersonNameComponents: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PersonNameComponents"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "name_prefix"),
    2: .standard(proto: "given_name"),
    3: .standard(proto: "middle_name"),
    4: .standard(proto: "family_name"),
    5: .standard(proto: "name_suffix"),
    6: .same(proto: "nickname"),
    7: .standard(proto: "phonetic_representation"),
  ]

  fileprivate class _StorageClass {
    var _namePrefix: String = String()
    var _givenName: String = String()
    var _middleName: String = String()
    var _familyName: String = String()
    var _nameSuffix: String = String()
    var _nickname: String = String()
    var _phoneticRepresentation: Apple_PersonNameComponents? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _namePrefix = source._namePrefix
      _givenName = source._givenName
      _middleName = source._middleName
      _familyName = source._familyName
      _nameSuffix = source._nameSuffix
      _nickname = source._nickname
      _phoneticRepresentation = source._phoneticRepresentation
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._namePrefix) }()
        case 2: try { try decoder.decodeSingularStringField(value: &_storage._givenName) }()
        case 3: try { try decoder.decodeSingularStringField(value: &_storage._middleName) }()
        case 4: try { try decoder.decodeSingularStringField(value: &_storage._familyName) }()
        case 5: try { try decoder.decodeSingularStringField(value: &_storage._nameSuffix) }()
        case 6: try { try decoder.decodeSingularStringField(value: &_storage._nickname) }()
        case 7: try { try decoder.decodeSingularMessageField(value: &_storage._phoneticRepresentation) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if !_storage._namePrefix.isEmpty {
        try visitor.visitSingularStringField(value: _storage._namePrefix, fieldNumber: 1)
      }
      if !_storage._givenName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._givenName, fieldNumber: 2)
      }
      if !_storage._middleName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._middleName, fieldNumber: 3)
      }
      if !_storage._familyName.isEmpty {
        try visitor.visitSingularStringField(value: _storage._familyName, fieldNumber: 4)
      }
      if !_storage._nameSuffix.isEmpty {
        try visitor.visitSingularStringField(value: _storage._nameSuffix, fieldNumber: 5)
      }
      if !_storage._nickname.isEmpty {
        try visitor.visitSingularStringField(value: _storage._nickname, fieldNumber: 6)
      }
      if let v = _storage._phoneticRepresentation {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 7)
      }
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apple_PersonNameComponents, rhs: Apple_PersonNameComponents) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._namePrefix != rhs_storage._namePrefix {return false}
        if _storage._givenName != rhs_storage._givenName {return false}
        if _storage._middleName != rhs_storage._middleName {return false}
        if _storage._familyName != rhs_storage._familyName {return false}
        if _storage._nameSuffix != rhs_storage._nameSuffix {return false}
        if _storage._nickname != rhs_storage._nickname {return false}
        if _storage._phoneticRepresentation != rhs_storage._phoneticRepresentation {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_PostalAddress: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".PostalAddress"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "street"),
    2: .same(proto: "city"),
    3: .same(proto: "state"),
    4: .standard(proto: "postal_code"),
    5: .same(proto: "country"),
    6: .standard(proto: "iso_country_code"),
    7: .standard(proto: "sub_administrative_area"),
    8: .standard(proto: "sub_locality"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.street) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.city) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.state) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.postalCode) }()
      case 5: try { try decoder.decodeSingularStringField(value: &self.country) }()
      case 6: try { try decoder.decodeSingularStringField(value: &self.isoCountryCode) }()
      case 7: try { try decoder.decodeSingularStringField(value: &self.subAdministrativeArea) }()
      case 8: try { try decoder.decodeSingularStringField(value: &self.subLocality) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.street.isEmpty {
      try visitor.visitSingularStringField(value: self.street, fieldNumber: 1)
    }
    if !self.city.isEmpty {
      try visitor.visitSingularStringField(value: self.city, fieldNumber: 2)
    }
    if !self.state.isEmpty {
      try visitor.visitSingularStringField(value: self.state, fieldNumber: 3)
    }
    if !self.postalCode.isEmpty {
      try visitor.visitSingularStringField(value: self.postalCode, fieldNumber: 4)
    }
    if !self.country.isEmpty {
      try visitor.visitSingularStringField(value: self.country, fieldNumber: 5)
    }
    if !self.isoCountryCode.isEmpty {
      try visitor.visitSingularStringField(value: self.isoCountryCode, fieldNumber: 6)
    }
    if !self.subAdministrativeArea.isEmpty {
      try visitor.visitSingularStringField(value: self.subAdministrativeArea, fieldNumber: 7)
    }
    if !self.subLocality.isEmpty {
      try visitor.visitSingularStringField(value: self.subLocality, fieldNumber: 8)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apple_PostalAddress, rhs: Apple_PostalAddress) -> Bool {
    if lhs.street != rhs.street {return false}
    if lhs.city != rhs.city {return false}
    if lhs.state != rhs.state {return false}
    if lhs.postalCode != rhs.postalCode {return false}
    if lhs.country != rhs.country {return false}
    if lhs.isoCountryCode != rhs.isoCountryCode {return false}
    if lhs.subAdministrativeArea != rhs.subAdministrativeArea {return false}
    if lhs.subLocality != rhs.subLocality {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Apple_ShippingMethod: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ShippingMethod"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "name"),
    2: .same(proto: "price"),
    3: .same(proto: "identifier"),
    4: .same(proto: "detail"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.name) }()
      case 2: try { try decoder.decodeSingularDoubleField(value: &self.price) }()
      case 3: try { try decoder.decodeSingularStringField(value: &self.identifier) }()
      case 4: try { try decoder.decodeSingularStringField(value: &self.detail) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.name.isEmpty {
      try visitor.visitSingularStringField(value: self.name, fieldNumber: 1)
    }
    if self.price != 0 {
      try visitor.visitSingularDoubleField(value: self.price, fieldNumber: 2)
    }
    if !self.identifier.isEmpty {
      try visitor.visitSingularStringField(value: self.identifier, fieldNumber: 3)
    }
    if !self.detail.isEmpty {
      try visitor.visitSingularStringField(value: self.detail, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Apple_ShippingMethod, rhs: Apple_ShippingMethod) -> Bool {
    if lhs.name != rhs.name {return false}
    if lhs.price != rhs.price {return false}
    if lhs.identifier != rhs.identifier {return false}
    if lhs.detail != rhs.detail {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
