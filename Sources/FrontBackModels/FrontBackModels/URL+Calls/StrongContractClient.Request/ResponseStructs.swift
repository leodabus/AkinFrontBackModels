//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/7/24.
//

import Foundation


// Response model for `register(basicInfo:)` API call
public struct RegisterResponse: Codable {
    var success: Bool
    var message: String?
    var userId: String?
}

public struct GeneralUser: Codable {
    var id: Int
    var name: String
    var profileImages: [String] = []
    var verified: Bool = false
    
}

public struct StandardPostResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `triggerTwoPersonGreet(twoIDs:)` API call
public struct TwoPersonGreetResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `reportFlags(_:question:)`, `reportFlags(_:response:for:)`, `reportFlags(_:picURL:userID:)` API calls
public struct ReportFlagsResponse: Codable {
    var success: Bool
    var flaggedCount: Int?
}

// Response model for `getUserInformation` API call
public struct GetUserInformationResponse: Codable {
    var user: UserInformation
}

public struct UserInformation: Codable {
    var id: String
    var name: String
    var email: String
    var profileImageUrl: String?
    var bio: String?
}

// Response model for `rate(greetid:otherUser:rating:)` API call
public struct RateResponse: Codable {
    var success: Bool
    var newRating: Double?
}

// No specific response model needed for `updateSchedule`, `updateGreet`, `updateGreetSettings` as they might just return a success status

// Response model for `updateUserLocation(userId:contextId:)`, `silentPushLocationUpdates(alwaysOn:)`, `updateLocation(token:userID:lat:lon:)` API calls
public struct LocationUpdateResponse: Codable {
    var success: Bool
    var message: String?
}

// Assume no response body for `assert(_:message:file:line:)` or handle as needed

// Response model for `update(importance:for:questionID:)` API call
public struct UpdateImportanceResponse: Codable {
    var success: Bool
    var updatedImportance: Question.Importance?
}

// Response model for `track(events:)` API call
public struct TrackEventsResponse: Codable {
    var success: Bool
    var trackedEventsCount: Int?
}

// Response model for `updateEmail(new:password:)`, `updateCourtesyCallSetting(allows:)`, `update(oldPassword:newPassword:savedEmail:)` API calls
public struct UpdateEmailResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `add(question:)` API call
public struct AddQuestionResponse: Codable {
    var success: Bool
    var questionId: Int?
}

// Response model for `manualGreet(otherID:)` API call
public struct ManualGreetResponse: Codable {
    var success: Bool
    var greetId: Int?
}

// Response model for `resetPassword(email:)` API call
public struct ResetPasswordResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `change(email:to:)` API call
public struct ChangeEmailResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `registerDeviceToken(error:)` and `register(deviceToken:)` API calls
public struct RegisterDeviceTokenResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `hide(me:)` API call
public struct HideMeResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `register(pushKitDeviceToken:)` API call
public struct RegisterPushKitDeviceTokenResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `block(user:)` and `block(otherID:shouldBlock:)` API calls
public struct BlockUserResponse: Codable {
    var success: Bool
    var blockedUserId: Int?
}

// Response model for `login(email:password:)` API call
public struct LoginResponse: Codable {
    var success: Bool
    var userId: String?
    var authToken: String?
}

// Response model for `add(response:questionID:)` API call
public struct AddResponseResponse: Codable {
    var success: Bool
    var responseId: Int?
}

// Response model for `nearbyUsers(location:)` API call
public struct NearbyUsersResponse: Codable {
    var success: Bool
    var users: [UserInformation] // Reusing UserInformation public struct from earlier
}

// Response model for `make(my:their:for:for:forContext:)` API call
public struct MakeResponseResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `responses(question:context:)` and `responses(search:question:context:)` API calls
public struct QuestionResponsesResponse: Codable {
    var success: Bool
    var responses: [QuestionResponse]

    public struct QuestionResponse: Codable {
        var id: Int
        var text: String
        var selected: Bool
    }
}

// Response model for `questions(search:type:page:context:required:)` API call
public struct QuestionsResponse: Codable {
    var success: Bool
    var questions: [Question]

    // Reusing Question public struct from earlier
}

// Response model for `logout` API call
public struct LogoutResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `update(settings:)` API call
public struct UpdateSettingsResponse: Codable {
    var success: Bool
    var message: String?
}

// Response model for `addDisplay()` and `uploadPic` API calls
public struct AddDisplayPictureResponse: Codable {
    var success: Bool
    var imageUrl: String?
}

// Response model for the `uploadPic` API call
public struct UploadPicResponse: Codable {
    var success: Bool
    var imageUrl: String?
}

// Assuming a response model for the commented-out `register(basicInfo:)` URL creation function
public struct RegisterBasicInfoResponse: Codable {
    var success: Bool
    var userId: String?
    var message: String?
}

// Assuming a response model for the commented-out `prefetchUser(for:)` URL creation function
public struct PrefetchUserForResponse: Codable {
    var success: Bool
    var users: [UserDetail]

    public struct UserDetail: Codable {
        var id: Int
        var name: String
        var profileImageUrl: String?
    }
}

// Assuming a response model for the commented-out `triggerTwoPersonGreet(with:and:)` URL creation function
public struct TriggerTwoPersonGreetResponse: Codable {
    var success: Bool
    var message: String?
}
