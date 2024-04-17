//
//  Greet.User.swift
//  akin
//
//  Created by Scott Lydon on 8/4/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

extension Greet {

    struct User: Codable {
        var id: Int
        var name: String
        var profileImages: [String] = []
        var percentTravelled: Double? = nil
        var image: Data? = nil
        var minutesFromPoint: Int? = nil
        var settings: Greet.Settings? = nil
        var verified: Bool = false
        // var imageUpdatedTo: ImageAction? = nil
    }
}
