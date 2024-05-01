//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/7/24.
//

import Foundation

public typealias UpdateMidGreetSettingsRequest = Greet.Settings
//public struct UpdateMidGreetSettingsRequest: Codable {
//    public var midGreetSettings: Greet.Settings
//
//    public init(midGreetSettings: Greet.Settings) {
//        self.midGreetSettings = midGreetSettings
//    }
//}

public struct AssertRequest: Codable {
    public var assertion: Bool
    public var message: String
    public var file: String
    public var line: Int

    public init(
        assertion: Bool = false,
        message: String,
        file: String = #file,
        line: Int = #line
    ) {
        self.assertion = assertion
        self.message = message
        self.file = file
        self.line = line
    }
}

typealias UpdateCourtesyCallSettingRequest = Bool
// Argument public structs
//public struct UpdateCourtesyCallSettingRequest: Codable {
//    public var allows: Bool
//
//    public init(allows: Bool) {
//        self.allows = allows
//    }
//}

public struct UpdatePasswordRequest: Codable {
    public var oldPassword: String
    public var newPassword: String
    public var savedEmail: String

    public init(oldPassword: String, newPassword: String, savedEmail: String) {
        self.oldPassword = oldPassword
        self.newPassword = newPassword
        self.savedEmail = savedEmail
    }
}

public typealias SendMakeRequest = String
//public struct SendMakeRequest: Codable {
//    public var deviceString: String
//
//    public init(deviceString: String) {
//        self.deviceString = deviceString
//    }
//}

public typealias AddQuestionRequest = String
//public struct AddQuestionRequest: Codable {
//    public var questionText: String // Assuming 'Question' has a 'text' property
//    // The date might be generated at the time of the request, so it's not included here.
//
//    public init(questionText: String) {
//        self.questionText = questionText
//    }
//}

public typealias ManualGreetRequest = Int
//public struct ManualGreetRequest: Codable {
//    public var otherID: Int
//
//    public init(otherID: Int) {
//        self.otherID = otherID
//    }
//}

public typealias TrackEventsRequest = [Int: String]
//public struct TrackEventsRequest: Codable {
//    public var events: [Int: String]
//
//    public init(events: [Int : String]) {
//        self.events = events
//    }
//}

public struct UpdateEmailRequest: Codable {
    public var newEmail: String
    public var password: String

    public init(newEmail: String, password: String) {
        self.newEmail = newEmail
        self.password = password
    }
}

public struct UpdateImportanceRequest: Codable {
    public var importances: [ContextID: Question.Importance]
    public var questionID: Int

    public init(importances: [ContextID: Question.Importance], questionID: Int) {
        self.importances = importances
        self.questionID = questionID
    }
}

// Define the argument public structs
public struct ReportFlagsQuestion: Codable {
    public var flags: [Int]
    public var questionID: Int

    public init(flags: [Int], questionID: Int) {
        self.flags = flags
        self.questionID = questionID
    }
}

// Request public structure for `reportFlags` with question ID
public struct ReportFlagsQuestionRequest: Codable {
    let flags: [Int]
    let questionId: Int

    public init(flags: [Int], questionId: Int) {
        self.flags = flags
        self.questionId = questionId
    }
}

// Request public structure for `reportFlags` with response ID and question ID
public struct ReportFlagsResponseRequest: Codable {
    let flags: [Int]
    let responseId: Int
    let questionId: Int

    public init(flags: [Int], responseId: Int, questionId: Int) {
        self.flags = flags
        self.responseId = responseId
        self.questionId = questionId
    }
}

// Request public structure for `reportFlags` with pic URL and userID
public struct ReportFlagsPicURLRequest: Codable {
    let flags: [Int]
    let picURL: String

    public init(flags: [Int], picURL: String) {
        self.flags = flags
        self.picURL = picURL
    }
}

// Request public structure for rating a greet
public struct RateRequest: Codable {
    let greetId: String
    let otherUserId: Int
    let rating: Double

    public init(greetId: String, otherUserId: Int, rating: Double) {
        self.greetId = greetId
        self.otherUserId = otherUserId
        self.rating = rating
    }
}

import CoreLocation
// Request public structure for updating user location with user ID and context ID
public struct UpdateUserLocationRequest: Codable {
    let contextId: String
    let coordinate: CLLocationCoordinate2D

    public init(
        contextId: String,
        coordinate: CLLocationCoordinate2D
    ) {
        self.contextId = contextId
        self.coordinate = coordinate
    }
}

public typealias SilentPushLocationUpdatesRequest = Bool
// Request public structure for silent push location updates
//public struct SilentPushLocationUpdatesRequest: Codable {
//    let alwaysOn: Bool
//
//    public init(alwaysOn: Bool) {
//        self.alwaysOn = alwaysOn
//    }
//}

// Request public structure for updating location with token, userID, latitude, and longitude
public struct UpdateLocationRequest: Codable {
    let token: String?
    let latitude: String
    let longitude: String

    public init(token: String?, latitude: String, longitude: String) {
        self.token = token
        self.latitude = latitude
        self.longitude = longitude
    }
}

public typealias ResetPasswordRequest = String
// Define Argument public structs
//public struct ResetPasswordRequest: Codable {
//    public var email: String
//
//    public init(email: String) {
//        self.email = email
//    }
//}

public struct ChangeEmailRequest: Codable {
    public var currentEmail: String
    public var newEmail: String

    public init(currentEmail: String, newEmail: String) {
        self.currentEmail = currentEmail
        self.newEmail = newEmail
    }
}

// public typealias RegisterDeviceTokenErrorRequest = String
//public struct RegisterDeviceTokenErrorRequest: Codable {
//    public var error: String
//
//    public init(error: String) {
//        self.error = error
//    }
//}

public typealias RegisterDeviceTokenRequest = String
//public struct RegisterDeviceTokenRequest: Codable {
//    public var deviceToken: String
//
//    public init(deviceToken: String) {
//        self.deviceToken = deviceToken
//    }
//}

public typealias HideMeRequest = Bool
//public struct HideMeRequest: Codable {
//    public var hide: Bool
//
//    public init(hide: Bool) {
//        self.hide = hide
//    }
//}

public typealias RegisterPushKitDeviceTokenRequest = String
//public struct RegisterPushKitDeviceTokenRequest: Codable {
//    public var pushKitDeviceToken: String
//
//    public init(pushKitDeviceToken: String) {
//        self.pushKitDeviceToken = pushKitDeviceToken
//    }
//}

// Define Argument public structs
public struct BlockUserRequest: Codable {
    public var otherUser: Int
    public var shouldBlock: Bool? // Optional to accommodate both block user functions

    public init(otherUser: Int, shouldBlock: Bool? = nil) {
        self.otherUser = otherUser
        self.shouldBlock = shouldBlock
    }
}

public struct LoginRequest: Codable {
    public var email: String
    public var password: String

    public init(email: String, password: String) {
        self.email = email
        self.password = password
    }
}

public struct AddResponseRequest: Codable {
    public var response: Question.Response
    public var questionID: String

    public init(response: Question.Response, questionID: String) {
        self.response = response
        self.questionID = questionID
    }
}

public struct NearbyUsersRequest: Codable {
    public var latitude: String
    public var longitude: String

    public init(latitude: String, longitude: String) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

public struct MakeUserChoiceRequest: Codable {
    public var myTheir: Question.Response.Selections.MyTheir?
    public var choice: Question.Response.Selections.MyTheir.Choice?
    public var responseID: Int
    public var questionID: Int
    public var context: Context

    public init(
        myTheir: Question.Response.Selections.MyTheir? = nil,
        choice: Question.Response.Selections.MyTheir.Choice? = nil,
        responseID: Int,
        questionID: Int,
        context: Context
    ) {
        self.myTheir = myTheir
        self.choice = choice
        self.responseID = responseID
        self.questionID = questionID
        self.context = context
    }
}

public struct GetResponsesRequest: Codable {
    public var questionID: Int
    public var context: Context.RawValue
    public var searchText: String?

    public init(questionID: Int, context: Context.RawValue, searchText: String? = nil) {
        self.questionID = questionID
        self.context = context
        self.searchText = searchText
    }
}

public struct GetQuestionsRequest: Codable {
    public var searchText: String?
    public var type: Question.Category.RawValue
    public var page: Int?
    public var context: Context.RawValue
    public var required: Bool

    public init(
        searchText: String? = nil,
        type: Question.Category.RawValue,
        page: Int? = nil,
        context: Context.RawValue,
        required: Bool
    ) {
        self.searchText = searchText
        self.type = type
        self.page = page
        self.context = context
        self.required = required
    }
}
