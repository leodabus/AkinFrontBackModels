//
//  LocalNotifications.swift
//  akin
//
//  Created by Scott Lydon on 4/9/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation
import UserNotifications

extension Greet.Notification {
    
    struct LocalModel: Codable {

        enum Key: String, Codable {
            case getReviewTime, weClosedTheGreet
        }
        
        var greetIdentifier: String
        var otherUserID: Int
        var profileURL: String?
        var name: String
        var timeMet: String
        var notificationKey: LocalModel.Key

        init(
            identifier: String,
            otherUserID: Int,
            profileURL: String?,
            name: String,
            timeMet: String,
            notificationKey: LocalModel.Key
        ) {
            self.greetIdentifier = identifier
            self.otherUserID = otherUserID
            self.profileURL = profileURL
            self.name = name
            self.timeMet = timeMet
            self.notificationKey = notificationKey
        }
    }
}
