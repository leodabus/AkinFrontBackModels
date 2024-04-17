//
//  PrivateDetails.swift
//  akin
//
//  Created by Scott Lydon on 8/4/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

struct PrivateDetails: Codable {
    var password: String
    var romanceOn: Bool
    var token: String

    init(password: String, romanceOn: Bool, accessToken: String) {
        self.password = password
        self.romanceOn = romanceOn
        self.token = accessToken
    }
}
