//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/7/24.
//

import Foundation

public struct UpdateMidGreetSettingsRequest: Codable {
    var midGreetSettings: Greet.Settings
}

public struct UpdateScheduleRequest: Codable {
    // Assuming token and user ID are fetched internally in StrongContractClient, so no explicit properties are required here.
}
public struct UpdateGreetRequest: Codable {
    // Similar assumption as above.
}

public struct UpdateGreetSettingsRequest: Codable {
    // Similar assumption as above.
}

public struct AssertRequest: Codable {
    var assertion: Bool
    var message: String
    var file: String
    var line: Int
}

// Argument public structs
public struct UpdateCourtesyCallSettingRequest: Codable {
    var allows: Bool
}

public struct UpdatePasswordRequest: Codable {
    var oldPassword: String
    var newPassword: String
    var savedEmail: String
}

public struct SendMakeRequest: Codable {
    var deviceString: String
}

public struct AddQuestionRequest: Codable {
    var questionText: String // Assuming 'Question' has a 'text' property
    // The date might be generated at the time of the request, so it's not included here.
}

public struct ManualGreetRequest: Codable {
    var otherID: Int
}

public struct TrackEventsRequest: Codable {
    var events: [Int: String]
}

public struct UpdateEmailRequest: Codable {
    var newEmail: String
    var password: String
}

public struct UpdateImportanceRequest: Codable {
    var importance: Question.Importance
    var context: Context
    var questionID: Int
}

public struct GetUserInformationRequest: Codable {
    var accessToken: String // Added accessToken to match the provided description
}

// Define the argument public structs
public struct ReportFlagsQuestion: Codable {
    var flags: [Int]
    var questionID: Int
}

// Request public structure for `reportFlags` with question ID
public struct ReportFlagsQuestionRequest: Codable {
    let flags: [Int]
    let questionId: Int
}

// Request public structure for `reportFlags` with response ID and question ID
public struct ReportFlagsResponseRequest: Codable {
    let flags: [Int]
    let responseId: Int
    let questionId: Int
}

// Request public structure for `reportFlags` with pic URL and userID
public struct ReportFlagsPicURLRequest: Codable {
    let flags: [Int]
    let picURL: String
    let userId: Int
}

// Request public structure for rating a greet
public struct RateRequest: Codable {
    let greetId: String
    let otherUserId: Int
    let rating: Double
}

// Request public structure for updating user location with user ID and context ID
public struct UpdateUserLocationRequest: Codable {
    let userId: String
    let contextId: String
}

// Request public structure for silent push location updates
public struct SilentPushLocationUpdatesRequest: Codable {
    let alwaysOn: Bool
}

// Request public structure for updating location with token, userID, latitude, and longitude
public struct UpdateLocationRequest: Codable {
    let token: String?
    let userId: String?
    let latitude: String
    let longitude: String
}


// Define Argument public structs
public struct ResetPasswordRequest: Codable {
    var email: String
}

public struct ChangeEmailRequest: Codable {
    var currentEmail: String
    var newEmail: String
}

public struct RegisterDeviceTokenErrorRequest: Codable {
    var error: String
}

public struct RegisterDeviceTokenRequest: Codable {
    var deviceToken: String
}

public struct HideMeRequest: Codable {
    var hide: Bool
}

public struct RegisterPushKitDeviceTokenRequest: Codable {
    var pushKitDeviceToken: String
}

// Define Argument public structs
public struct BlockUserRequest: Codable {
    var otherUser: Int
    var shouldBlock: Bool? // Optional to accommodate both block user functions
}

public struct BlockedUsersRequest: Codable {
    // No additional parameters needed if the access token and user ID are internally managed
}

public struct LoginRequest: Codable {
    var email: String
    var password: String
}

public struct AddResponseRequest: Codable {
    var responseText: String
    var questionID: String
}

public struct NearbyUsersRequest: Codable {
    var latitude: String
    var longitude: String
}

public struct MakeUserResponseRequest: Codable {
    var myChoiceWeightMultiplier: Double?
    var theirChoiceWeightMultiplier: Double?
    var responseID: Int
    var questionID: Int
    var context: Context.RawValue
}

public struct GetResponsesRequest: Codable {
    var questionID: Int
    var context: Context.RawValue
    var searchText: String?
}

public struct GetQuestionsRequest: Codable {
    var searchText: String?
    var type: Question.Category.RawValue
    var page: Int?
    var context: Context.RawValue
    var required: Bool
}

public struct AddDisplayRequest: Codable {
    // No additional parameters needed if the access token and user ID are internally managed
}

public struct LogoutRequest: Codable {
    // Assuming access token and user ID are managed internally, so no explicit properties are needed here.
}

public struct AccessTokenRequest: Codable {

}

public struct UploadPicRequest: Codable {
    // Assuming access token and user ID are managed internally, so no explicit properties are needed here.
}
