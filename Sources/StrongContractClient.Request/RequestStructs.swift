//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/7/24.
//

import Foundation

struct UpdateMidGreetSettingsRequest: Codable {
    public var midGreetSettings: Greet.Settings
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
    public var assertion: Bool
    public var message: String
    public var file: String
    public var line: Int
}

// Argument structs
struct UpdateCourtesyCallSettingRequest: Codable {
    public var allows: Bool
}

struct UpdatePasswordRequest: Codable {
    public var oldPassword: String
    public var newPassword: String
    public var savedEmail: String
}

struct SendMakeRequest: Codable {
    public var deviceString: String
}

struct AddQuestionRequest: Codable {
    public var questionText: String // Assuming 'Question' has a 'text' property
    // The date might be generated at the time of the request, so it's not included here.
}

struct ManualGreetRequest: Codable {
    public var otherID: Int
}

struct TrackEventsRequest: Codable {
    public var events: [Int: String]
}

struct UpdateEmailRequest: Codable {
    public var newEmail: String
    public var password: String
}

struct UpdateImportanceRequest: Codable {
    public var importance: Question.Importance
    public var context: Context
    public var questionID: Int
}

struct GetUserInformationRequest: Codable {
    public var accessToken: String // Added accessToken to match the provided description
}

// Define the argument structs
struct ReportFlagsQuestion: Codable {
    public var flags: [Int]
    public var questionID: Int
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
    public var email: String
}

struct ChangeEmailRequest: Codable {
    public var currentEmail: String
    public var newEmail: String
}

struct RegisterDeviceTokenErrorRequest: Codable {
    public var error: String
}

struct RegisterDeviceTokenRequest: Codable {
    public var deviceToken: String
}

struct HideMeRequest: Codable {
    public var hide: Bool
}

struct RegisterPushKitDeviceTokenRequest: Codable {
    public var pushKitDeviceToken: String
}

// Define Argument structs
struct BlockUserRequest: Codable {
    public var otherUser: Int
    public var shouldBlock: Bool? // Optional to accommodate both block user functions
}

struct BlockedUsersRequest: Codable {
    // No additional parameters needed if the access token and user ID are internally managed
}

struct LoginRequest: Codable {
    public var email: String
    public var password: String
}

struct AddResponseRequest: Codable {
    public var responseText: String
    public var questionID: String
}

struct NearbyUsersRequest: Codable {
    public var latitude: String
    public var longitude: String
}

struct MakeUserResponseRequest: Codable {
    public var myChoiceWeightMultiplier: Double?
    public var theirChoiceWeightMultiplier: Double?
    public var responseID: Int
    public var questionID: Int
    public var context: Context.RawValue
}

struct GetResponsesRequest: Codable {
    public var questionID: Int
    public var context: Context.RawValue
    public var searchText: String?
}

struct GetQuestionsRequest: Codable {
    public var searchText: String?
    public var type: Question.Category.RawValue
    public var page: Int?
    public var context: Context.RawValue
    public var required: Bool
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
