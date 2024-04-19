//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/7/24.
//

import Foundation

public struct UpdateMidGreetSettingsRequest: Codable {
    public var midGreetSettings: Greet.Settings
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
    public var assertion: Bool
    public var message: String
    public var file: String
    public var line: Int
}

// Argument public structs
public struct UpdateCourtesyCallSettingRequest: Codable {
    public var allows: Bool
}

public struct UpdatePasswordRequest: Codable {
    public var oldPassword: String
    public var newPassword: String
    public var savedEmail: String
}

public struct SendMakeRequest: Codable {
    public var deviceString: String
}

public struct AddQuestionRequest: Codable {
    public var questionText: String // Assuming 'Question' has a 'text' property
    // The date might be generated at the time of the request, so it's not included here.
}

public struct ManualGreetRequest: Codable {
    public var otherID: Int
}

public struct TrackEventsRequest: Codable {
    public var events: [Int: String]
}

public struct UpdateEmailRequest: Codable {
    public var newEmail: String
    public var password: String
}

public struct UpdateImportanceRequest: Codable {
    public var importance: Question.Importance
    public var context: Context
    public var questionID: Int
}

public struct GetUserInformationRequest: Codable {
    public var accessToken: String // Added accessToken to match the provided description
}

// Define the argument public structs
public struct ReportFlagsQuestion: Codable {
    public var flags: [Int]
    public var questionID: Int
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
    public var email: String
}

public struct ChangeEmailRequest: Codable {
    public var currentEmail: String
    public var newEmail: String
}

public struct RegisterDeviceTokenErrorRequest: Codable {
    public var error: String
}

public struct RegisterDeviceTokenRequest: Codable {
    public var deviceToken: String
}

public struct HideMeRequest: Codable {
    public var hide: Bool
}

public struct RegisterPushKitDeviceTokenRequest: Codable {
    public var pushKitDeviceToken: String
}

// Define Argument public structs
public struct BlockUserRequest: Codable {
    public var otherUser: Int
    public var shouldBlock: Bool? // Optional to accommodate both block user functions
}

public struct BlockedUsersRequest: Codable {
    // No additional parameters needed if the access token and user ID are internally managed
}

public struct LoginRequest: Codable {
    public var email: String
    public var password: String
}

public struct AddResponseRequest: Codable {
    public var responseText: String
    public var questionID: String
}

public struct NearbyUsersRequest: Codable {
    public var latitude: String
    public var longitude: String
}

public struct MakeUserResponseRequest: Codable {
    public var myChoiceWeightMultiplier: Double?
    public var theirChoiceWeightMultiplier: Double?
    public var responseID: Int
    public var questionID: Int
    public var context: Context.RawValue
}

public struct GetResponsesRequest: Codable {
    public var questionID: Int
    public var context: Context.RawValue
    public var searchText: String?
}

public struct GetQuestionsRequest: Codable {
    public var searchText: String?
    public var type: Question.Category.RawValue
    public var page: Int?
    public var context: Context.RawValue
    public var required: Bool
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
