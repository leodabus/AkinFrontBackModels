//
//  Greet+LocationCoordinate.swift
//  akin
//
//  Created by Jiten Devlani on 02/07/21.
//  Copyright © 2021 ElevatedUnderdogs. All rights reserved.
//

import Foundation

extension Greet {
    public struct UserLocationCoordinate: Codable {
        // TODO: - Temporary implementation until we have a final User object ready
        // Should be replaced with the release build
        public struct User: Codable {
            let id: String
//            let accessToken: String
        }
        let user: User
        let latitude: Double
        let longitude: Double
    }
}
