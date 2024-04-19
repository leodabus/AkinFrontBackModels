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
    public var id: Int
    public var name: String
    public var profileImages: [String] = []
    public var verified: Bool = false
    
}

struct StandardPostResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `triggerTwoPersonGreet(twoIDs:)` API call
struct TwoPersonGreetResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `reportFlags(_:question:)`, `reportFlags(_:response:for:)`, `reportFlags(_:picURL:userID:)` API calls
struct ReportFlagsResponse: Codable {
    public var success: Bool
    public var flaggedCount: Int?
}

// Response model for `getUserInformation` API call
struct GetUserInformationResponse: Codable {
    public var user: UserInformation
}

struct UserInformation: Codable {
    public var id: String
    public var name: String
    public var email: String
    public var profileImageUrl: String?
    public var bio: String?
}

// Response model for `rate(greetid:otherUser:rating:)` API call
struct RateResponse: Codable {
    public var success: Bool
    public var newRating: Double?
}

// No specific response model needed for `updateSchedule`, `updateGreet`, `updateGreetSettings` as they might just return a success status

// Response model for `updateUserLocation(userId:contextId:)`, `silentPushLocationUpdates(alwaysOn:)`, `updateLocation(token:userID:lat:lon:)` API calls
struct LocationUpdateResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Assume no response body for `assert(_:message:file:line:)` or handle as needed

// Response model for `update(importance:for:questionID:)` API call
struct UpdateImportanceResponse: Codable {
    public var success: Bool
    public var updatedImportance: Question.Importance?
}

// Response model for `track(events:)` API call
struct TrackEventsResponse: Codable {
    public var success: Bool
    public var trackedEventsCount: Int?
}

// Response model for `updateEmail(new:password:)`, `updateCourtesyCallSetting(allows:)`, `update(oldPassword:newPassword:savedEmail:)` API calls
struct UpdateEmailResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `add(question:)` API call
struct AddQuestionResponse: Codable {
    public var success: Bool
    public var questionId: Int?
}

// Response model for `manualGreet(otherID:)` API call
struct ManualGreetResponse: Codable {
    public var success: Bool
    public var greetId: Int?
}

// Response model for `resetPassword(email:)` API call
struct ResetPasswordResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `change(email:to:)` API call
struct ChangeEmailResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `registerDeviceToken(error:)` and `register(deviceToken:)` API calls
struct RegisterDeviceTokenResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `hide(me:)` API call
struct HideMeResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `register(pushKitDeviceToken:)` API call
struct RegisterPushKitDeviceTokenResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `block(user:)` and `block(otherID:shouldBlock:)` API calls
struct BlockUserResponse: Codable {
    public var success: Bool
    public var blockedUserId: Int?
}

// Response model for `login(email:password:)` API call
struct LoginResponse: Codable {
    public var success: Bool
    public var userId: String?
    public var authToken: String?
}

// Response model for `add(response:questionID:)` API call
struct AddResponseResponse: Codable {
    public var success: Bool
    public var responseId: Int?
}

// Response model for `nearbyUsers(location:)` API call
struct NearbyUsersResponse: Codable {
    public var success: Bool
    public var users: [UserInformation] // Reusing UserInformation struct from earlier
}

// Response model for `make(my:their:for:for:forContext:)` API call
struct MakeResponseResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `responses(question:context:)` and `responses(search:question:context:)` API calls
struct QuestionResponsesResponse: Codable {
    public var success: Bool
    public var responses: [QuestionResponse]

    public struct QuestionResponse: Codable {
        public var id: Int
        public var text: String
        public var selected: Bool
    }
}

// Response model for `questions(search:type:page:context:required:)` API call
struct QuestionsResponse: Codable {
    public var success: Bool
    public var questions: [Question]

    // Reusing Question struct from earlier
}

// Response model for `logout` API call
struct LogoutResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `update(settings:)` API call
struct UpdateSettingsResponse: Codable {
    public var success: Bool
    public var message: String?
}

// Response model for `addDisplay()` and `uploadPic` API calls
struct AddDisplayPictureResponse: Codable {
    public var success: Bool
    public var imageUrl: String?
}

// Response model for the `uploadPic` API call
struct UploadPicResponse: Codable {
    public var success: Bool
    public var imageUrl: String?
}

// Assuming a response model for the commented-out `register(basicInfo:)` URL creation function
struct RegisterBasicInfoResponse: Codable {
    public var success: Bool
    public var userId: String?
    public var message: String?
}

// Assuming a response model for the commented-out `prefetchUser(for:)` URL creation function
struct PrefetchUserForResponse: Codable {
    public var success: Bool
    public var users: [UserDetail]

    public struct UserDetail: Codable {
        public var id: Int
        public var name: String
        public var profileImageUrl: String?
    }
}

// Assuming a response model for the commented-out `triggerTwoPersonGreet(with:and:)` URL creation function
struct TriggerTwoPersonGreetResponse: Codable {
    public var success: Bool
    public var message: String?
}
