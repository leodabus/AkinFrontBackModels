//
//  AlertContents.swift
//  akin
//
//  Created by Scott Lydon on 8/4/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation
import CoreLocation

struct Contents: Codable {

    var title: String
    var message: String
    var confirmationButtonText: String
    var doNothing: String?
    var alreadyConfirmed: Bool?


    /// Initializes content to be used in an alert.
    /// - Parameters:
    ///   - title: Title of the alert
    ///   - message: The message of the alert view.
    ///   - confirmation: The confirmation button text.  For example: "Okay"
    ///   - doNothing: I think the  button to represent doing nothing...Not sure.
    ///   - alreadyConfirmed: I think this is a boolean payload...not sure.
    init(
        title: String,
        message: String,
        confirmation: String,
        doNothing: String? = nil,
        alreadyConfirmed: Bool? = nil
    ) {
        self.title = title
        self.message = message
        self.confirmationButtonText = confirmation
        self.doNothing = doNothing
        self.alreadyConfirmed = alreadyConfirmed
    }
}
