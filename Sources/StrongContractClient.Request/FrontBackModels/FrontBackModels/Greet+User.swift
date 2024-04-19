//
//  Greet.User.swift
//  akin
//
//  Created by Scott Lydon on 8/4/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

extension Greet {

    public struct User: Codable {
        public var id: Int
        public var name: String
        public var profileImages: [String] = []
        public var percentTravelled: Double? = nil
        public var image: Data? = nil
        public var minutesFromPoint: Int? = nil
        public var settings: Greet.Settings? = nil
        public var verified: Bool = false
        // var imageUpdatedTo: ImageAction? = nil
    }
}
