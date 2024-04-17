//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/7/24.
//

import Foundation


// Response model for `register(basicInfo:)` API call
public struct RegisterResponse: Codable {
    public var success: Bool
    public var message: String?
    public var userId: String?

    public init(success: Bool, message: String?, userId: String?) {
        self.success = success
        self.message = message
        self.userId = userId
    }
}

struct GeneralUser: Codable {
    var id: Int
    var name: String
    var profileImages: [String] = []
    var verified: Bool = false
    
}

struct StandardPostResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `triggerTwoPersonGreet(twoIDs:)` API call
struct TwoPersonGreetResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `reportFlags(_:question:)`, `reportFlags(_:response:for:)`, `reportFlags(_:picURL:userID:)` API calls
struct ReportFlagsResponse: Codable {
    var success: Bool
    var flaggedCount: Int?
}

// Response model for `getUserInformation` API call
struct GetUserInformationResponse: Codable {
    var user: UserInformation
}

struct UserInformation: Codable {
    var id: String
    var name: String
    var email: String
    var profileImageUrl: String?
    var bio: String?
}

// Response model for `rate(greetid:otherUser:rating:)` API call
struct RateResponse: Codable {
    var success: Bool
    var newRating: Double?
}

// No specific response model needed for `updateSchedule`, `updateGreet`, `updateGreetSettings` as they might just return a success status

// Response model for `updateUserLocation(userId:contextId:)`, `silentPushLocationUpdates(alwaysOn:)`, `updateLocation(token:userID:lat:lon:)` API calls
struct LocationUpdateResponse: Codable {
    var success: Bool
    var message: String?
}

// Assume no response body for `assert(_:message:file:line:)` or handle as needed

// Response model for `update(importance:for:questionID:)` API call
struct UpdateImportanceResponse: Codable {
    var success: Bool
    var updatedImportance: Question.Importance?
}

// Response model for `track(events:)` API call
struct TrackEventsResponse: Codable {
    var success: Bool
    var trackedEventsCount: Int?
}

// Response model for `updateEmail(new:password:)`, `updateCourtesyCallSetting(allows:)`, `update(oldPassword:newPassword:savedEmail:)` API calls
struct UpdateEmailResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `add(question:)` API call
struct AddQuestionResponse: Codable {
    var success: Bool
    var questionId: Int?
}

// Response model for `manualGreet(otherID:)` API call
struct ManualGreetResponse: Codable {
    var success: Bool
    var greetId: Int?
}

// Response model for `resetPassword(email:)` API call
struct ResetPasswordResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `change(email:to:)` API call
struct ChangeEmailResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `registerDeviceToken(error:)` and `register(deviceToken:)` API calls
struct RegisterDeviceTokenResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `hide(me:)` API call
struct HideMeResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `register(pushKitDeviceToken:)` API call
struct RegisterPushKitDeviceTokenResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `block(user:)` and `block(otherID:shouldBlock:)` API calls
struct BlockUserResponse: Codable {
    var success: Bool
    var blockedUserId: Int?
}

// Response model for `login(email:password:)` API call
struct LoginResponse: Codable {
    var success: Bool
    var userId: String?
    var authToken: String?
}

// Response model for `add(response:questionID:)` API call
struct AddResponseResponse: Codable {
    var success: Bool
    var responseId: Int?
}

// Response model for `nearbyUsers(location:)` API call
struct NearbyUsersResponse: Codable {
    var success: Bool
    var users: [UserInformation] // Reusing UserInformation struct from earlier
}

// Response model for `make(my:their:for:for:forContext:)` API call
struct MakeResponseResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `responses(question:context:)` and `responses(search:question:context:)` API calls
struct QuestionResponsesResponse: Codable {
    var success: Bool
    var responses: [QuestionResponse]

    struct QuestionResponse: Codable {
        var id: Int
        var text: String
        var selected: Bool
    }
}

// Response model for `questions(search:type:page:context:required:)` API call
struct QuestionsResponse: Codable {
    var success: Bool
    var questions: [Question]

    // Reusing Question struct from earlier
}

// Response model for `logout` API call
struct LogoutResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `update(settings:)` API call
struct UpdateSettingsResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `addDisplay()` and `uploadPic` API calls
struct AddDisplayPictureResponse: Codable {
    var success: Bool
    var imageUrl: String?
}

// Response model for the `uploadPic` API call
struct UploadPicResponse: Codable {
    var success: Bool
    var imageUrl: String?
}

// Assuming a response model for the commented-out `register(basicInfo:)` URL creation function
struct RegisterBasicInfoResponse: Codable {
    var success: Bool
    var userId: String?
    var message: String?
}

// Assuming a response model for the commented-out `prefetchUser(for:)` URL creation function
struct PrefetchUserForResponse: Codable {
    var success: Bool
    var users: [UserDetail]

    struct UserDetail: Codable {
        var id: Int
        var name: String
        var profileImageUrl: String?
    }
}

// Assuming a response model for the commented-out `triggerTwoPersonGreet(with:and:)` URL creation function
struct TriggerTwoPersonGreetResponse: Codable {
    var success: Bool
    var message: String?
}
