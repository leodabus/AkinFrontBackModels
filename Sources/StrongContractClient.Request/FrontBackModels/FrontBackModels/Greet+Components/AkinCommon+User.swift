//
//  User.swift
//  akin
//
//  Created by Scott Lydon on 8/4/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation
import CoreLocation

typealias UsersAction = ([Greet.User]) -> Void

public struct User: Codable {

    // MARK - properties

    var privacy: PrivateDetails? // Codable
    var imgData: Data?
    var imgLocation: String?
    var name: String
    var id: Int
    var email: String
    var zip: Int?
    var phoneNumber: Int? = nil
    var requiredQuestions: [Question] = [] // Codable
    var birthDate: Date? = nil
    var profilePicData: Data? = nil
    var meetingSchedule: [Week.Day] = []
    var dobString: String?

    // MARk - inits

    init(
        img imgData: Data? = nil,
        imgLocation: String? = nil,
        name: String,
        user_id: Int,
        email: String,
        zip: Int? = nil,
        dob: String? = nil
    ) {
        self.imgData = imgData
        self.id = user_id
        self.imgLocation = imgLocation
        self.name = name
        self.email = email
        self.zip = zip
        self.dobString = dob
    }
}
