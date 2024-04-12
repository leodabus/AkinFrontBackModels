//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/7/24.
//

import Foundation

struct UpdateMidGreetSettingsRequest: Codable {
    var midGreetSettings: Greet.Settings
}

struct UpdateScheduleRequest: Codable {
    // Assuming token and user ID are fetched internally in StrongContractClient, so no explicit properties are required here.
}
struct UpdateGreetRequest: Codable {
    // Similar assumption as above.
}

struct UpdateGreetSettingsRequest: Codable {
    // Similar assumption as above.
}

struct AssertRequest: Codable {
    var assertion: Bool
    var message: String
    var file: String
    var line: Int
}

// Argument structs
struct UpdateCourtesyCallSettingRequest: Codable {
    var allows: Bool
}

struct UpdatePasswordRequest: Codable {
    var oldPassword: String
    var newPassword: String
    var savedEmail: String
}

struct SendMakeRequest: Codable {
    var deviceString: String
}

struct AddQuestionRequest: Codable {
    var questionText: String // Assuming 'Question' has a 'text' property
    // The date might be generated at the time of the request, so it's not included here.
}

struct ManualGreetRequest: Codable {
    var otherID: Int
}

struct TrackEventsRequest: Codable {
    var events: [Int: String]
}

struct UpdateEmailRequest: Codable {
    var newEmail: String
    var password: String
}

struct UpdateImportanceRequest: Codable {
    var importance: Question.Importance
    var context: Context
    var questionID: Int
}

struct GetUserInformationRequest: Codable {
    var accessToken: String // Added accessToken to match the provided description
}

// Define the argument structs
struct ReportFlagsQuestion: Codable {
    var flags: [Int]
    var questionID: Int
}

// Request structure for `reportFlags` with question ID
struct ReportFlagsQuestionRequest: Codable {
    let flags: [Int]
    let questionId: Int
}

// Request structure for `reportFlags` with response ID and question ID
struct ReportFlagsResponseRequest: Codable {
    let flags: [Int]
    let responseId: Int
    let questionId: Int
}

// Request structure for `reportFlags` with pic URL and userID
struct ReportFlagsPicURLRequest: Codable {
    let flags: [Int]
    let picURL: String
    let userId: Int
}

// Request structure for rating a greet
struct RateRequest: Codable {
    let greetId: String
    let otherUserId: Int
    let rating: Double
}

// Request structure for updating user location with user ID and context ID
struct UpdateUserLocationRequest: Codable {
    let userId: String
    let contextId: String
}

// Request structure for silent push location updates
struct SilentPushLocationUpdatesRequest: Codable {
    let alwaysOn: Bool
}

// Request structure for updating location with token, userID, latitude, and longitude
struct UpdateLocationRequest: Codable {
    let token: String?
    let userId: String?
    let latitude: String
    let longitude: String
}


// Define Argument structs
struct ResetPasswordRequest: Codable {
    var email: String
}

struct ChangeEmailRequest: Codable {
    var currentEmail: String
    var newEmail: String
}

struct RegisterDeviceTokenErrorRequest: Codable {
    var error: String
}

struct RegisterDeviceTokenRequest: Codable {
    var deviceToken: String
}

struct HideMeRequest: Codable {
    var hide: Bool
}

struct RegisterPushKitDeviceTokenRequest: Codable {
    var pushKitDeviceToken: String
}

// Define Argument structs
struct BlockUserRequest: Codable {
    var otherUser: Int
    var shouldBlock: Bool? // Optional to accommodate both block user functions
}

struct BlockedUsersRequest: Codable {
    // No additional parameters needed if the access token and user ID are internally managed
}

struct LoginRequest: Codable {
    var email: String
    var password: String
}

struct AddResponseRequest: Codable {
    var responseText: String
    var questionID: String
}

struct NearbyUsersRequest: Codable {
    var latitude: String
    var longitude: String
}

struct MakeUserResponseRequest: Codable {
    var myChoiceWeightMultiplier: Double?
    var theirChoiceWeightMultiplier: Double?
    var responseID: Int
    var questionID: Int
    var context: Context.RawValue
}

struct GetResponsesRequest: Codable {
    var questionID: Int
    var context: Context.RawValue
    var searchText: String?
}

struct GetQuestionsRequest: Codable {
    var searchText: String?
    var type: Question.Category.RawValue
    var page: Int?
    var context: Context.RawValue
    var required: Bool
}

struct AddDisplayRequest: Codable {
    // No additional parameters needed if the access token and user ID are internally managed
}

struct LogoutRequest: Codable {
    // Assuming access token and user ID are managed internally, so no explicit properties are needed here.
}

struct AccessTokenRequest: Codable {

}

struct UploadPicRequest: Codable {
    // Assuming access token and user ID are managed internally, so no explicit properties are needed here.
}
