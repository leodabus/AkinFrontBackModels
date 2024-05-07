//
//  DataProtocol.swift
//
//
//  Created by Leonardo Dabus on 07/05/24.
//
import Foundation
import protocol Foundation.DataProtocol

#if canImport(Vapor)
import Vapor
#elseif canImport(Crypto)
import Crypto
#elseif canImport(CryptoKit)
import CryptoKit
#endif

@available(iOS 13.0, macOS 10.15, watchOS 6.0, tvOS 13.0, *)
extension DataProtocol {
    var sha256digest: SHA256Digest { SHA256.hash(data: self) }
    var sha384digest: SHA384Digest { SHA384.hash(data: self) }
    var sha512digest: SHA512Digest { SHA512.hash(data: self) }
}
