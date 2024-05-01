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

public struct GeneralUser: Codable {
    public var id: Int
    public var name: String
    public var profileImages: [String] = []
    public var verified: Bool = false
    
    public init(id: Int, name: String, profileImages: [String], verified: Bool) {
        self.id = id
        self.name = name
        self.profileImages = profileImages
        self.verified = verified
    }
}

public struct StandardPostResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `triggerTwoPersonGreet(twoIDs:)` API call
public struct TwoPersonGreetResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `reportFlags(_:question:)`, `reportFlags(_:response:for:)`, `reportFlags(_:picURL:userID:)` API calls
public struct ReportFlagsResponse: Codable {
    public var success: Bool
    public var flaggedCount: Int?

    public init(success: Bool, flaggedCount: Int? = nil) {
        self.success = success
        self.flaggedCount = flaggedCount
    }
}

// Response model for `getUserInformation` API call
public struct GetUserInformationResponse: Codable {
    public var user: UserInformation

    public init(user: UserInformation) {
        self.user = user
    }
}

public struct UserInformation: Codable {
    public var id: String
    public var name: String
    public var email: String
    public var profileImageUrl: String?
    public var bio: String?

    public init(id: String, name: String, email: String, profileImageUrl: String? = nil, bio: String? = nil) {
        self.id = id
        self.name = name
        self.email = email
        self.profileImageUrl = profileImageUrl
        self.bio = bio
    }
}

// Response model for `rate(greetid:otherUser:rating:)` API call
public struct RateResponse: Codable {
    public var success: Bool
    public var newRating: Double?

    public init(success: Bool, newRating: Double? = nil) {
        self.success = success
        self.newRating = newRating
    }
}


// Response model for `updateUserLocation(userId:contextId:)`, `silentPushLocationUpdates(alwaysOn:)`, `updateLocation(token:userID:lat:lon:)` API calls
public struct LocationUpdateResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}


// Response model for `update(importance:for:questionID:)` API call
public struct UpdateImportanceResponse: Codable {
    public var success: Bool
    public var updatedImportance: Question.Importance?

    public init(success: Bool, updatedImportance: Question.Importance? = nil) {
        self.success = success
        self.updatedImportance = updatedImportance
    }
}

// Response model for `track(events:)` API call
public struct TrackEventsResponse: Codable {
    public var success: Bool
    public var trackedEventsCount: Int?

    public init(success: Bool, trackedEventsCount: Int? = nil) {
        self.success = success
        self.trackedEventsCount = trackedEventsCount
    }
}

// Response model for `updateEmail(new:password:)`, `updateCourtesyCallSetting(allows:)`, `update(oldPassword:newPassword:savedEmail:)` API calls
public struct UpdateEmailResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

public enum ManualGreetResponse: String, Codable, Equatable, Hashable {
    case unsupportedURL
    case otherUserHasNoDeviceToken
    case otherUserHasInvalidDeviceToken
    case otherUserOffline
    case sendingAlertError
    case success
    case unkown

    init(_ json: [String: Any]) {
        if let success = json["success"] as? Bool, success {
            self = .success
            return
        } else if let errorCase = json["case"] as? Int {
            switch errorCase {
            case 0: self = .otherUserHasNoDeviceToken
            case 1: self = .otherUserHasInvalidDeviceToken
            case 2: self = .sendingAlertError
            case 3: self = .otherUserOffline
            case 4: self = .unsupportedURL
            default:
                self = .unkown
            }
        } else {
            self = .unkown
        }
    }
}

// Response model for `resetPassword(email:)` API call
public struct ResetPasswordResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `change(email:to:)` API call
public struct ChangeEmailResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `registerDeviceToken(error:)` and `register(deviceToken:)` API calls
public struct RegisterDeviceTokenResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `hide(me:)` API call
public struct HideMeResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `register(pushKitDeviceToken:)` API call
public struct RegisterPushKitDeviceTokenResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `block(user:)` and `block(otherID:shouldBlock:)` API calls
public struct BlockUserResponse: Codable {
    public var success: Bool
    public var blockedUserId: Int?

    public init(success: Bool, blockedUserId: Int? = nil) {
        self.success = success
        self.blockedUserId = blockedUserId
    }
}

// Response model for `login(email:password:)` API call
public struct LoginResponse: Codable {
    public var success: Bool
    public var userId: String?
    public var authToken: String?

    public init(success: Bool, userId: String? = nil, authToken: String? = nil) {
        self.success = success
        self.userId = userId
        self.authToken = authToken
    }
}

// Response model for `add(response:questionID:)` API call
public struct AddResponseResponse: Codable {
    public var success: Bool
    public var responseId: Int?

    public init(success: Bool, responseId: Int? = nil) {
        self.success = success
        self.responseId = responseId
    }
}

// Response model for `nearbyUsers(location:)` API call
public struct NearbyUsersResponse: Codable {
    public var success: Bool
    public var users: [UserInformation] // Reusing UserInformation public struct from earlier

    public init(success: Bool, users: [UserInformation]) {
        self.success = success
        self.users = users
    }
}

// Response model for `make(my:their:for:for:forContext:)` API call
public struct MakeResponseResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `responses(question:context:)` and `responses(search:question:context:)` API calls
public struct QuestionResponsesResponse: Codable {
    public var success: Bool
    public var responses: [QuestionResponse]

    public struct QuestionResponse: Codable {
        public var id: Int
        public var text: String
        public var selected: Bool
    }

    public init(success: Bool, responses: [QuestionResponse]) {
        self.success = success
        self.responses = responses
    }
}

// Response model for `questions(search:type:page:context:required:)` API call
public struct QuestionsResponse: Codable {
    public var success: Bool
    public var questions: [Question]

    // Reusing Question public struct from earlier

    public init(success: Bool, questions: [Question]) {
        self.success = success
        self.questions = questions
    }
}

// Response model for `logout` API call
public struct LogoutResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `update(settings:)` API call
public struct UpdateSettingsResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

// Response model for `addDisplay()` and `uploadPic` API calls
public struct AddDisplayPictureResponse: Codable {
    public var success: Bool
    public var imageUrl: String?

    public init(success: Bool, imageUrl: String? = nil) {
        self.success = success
        self.imageUrl = imageUrl
    }
}

// Response model for the `uploadPic` API call
public struct UploadPicResponse: Codable {
    public var success: Bool
    public var imageUrl: String?

    public init(success: Bool, imageUrl: String? = nil) {
        self.success = success
        self.imageUrl = imageUrl
    }
}

// Assuming a response model for the commented-out `register(basicInfo:)` URL creation function
public struct RegisterBasicInfoResponse: Codable {
    public var success: Bool
    public var userId: String?
    public var message: String?

    public init(success: Bool, userId: String? = nil, message: String? = nil) {
        self.success = success
        self.userId = userId
        self.message = message
    }
}

// Assuming a response model for the commented-out `prefetchUser(for:)` URL creation function
public struct PrefetchUserForResponse: Codable {
    public var success: Bool
    public var users: [UserDetail]

    public struct UserDetail: Codable {
        public var id: Int
        public var name: String
        public var profileImageUrl: String?
    }

    public init(success: Bool, users: [UserDetail]) {
        self.success = success
        self.users = users
    }
}

// Assuming a response model for the commented-out `triggerTwoPersonGreet(with:and:)` URL creation function
public struct TriggerTwoPersonGreetResponse: Codable {
    public var success: Bool
    public var message: String?

    public init(success: Bool, message: String? = nil) {
        self.success = success
        self.message = message
    }
}

public typealias Ettiquette = TermsOfService

public struct TermsOfService: Codable, Equatable, Hashable {
    public var text: String
    public var appName: String
    public var lastUpdated: String
    public var contactInfo: String
    public init(text: String, appName: String, lastUpdated: String, contactInfo: String) {
        self.text = text
        self.appName = appName
        self.lastUpdated = lastUpdated
        self.contactInfo = contactInfo
    }
}



import MapKit

extension TravelMethod {

    public var transportType: MKDirectionsTransportType {
        switch self {
        case .bike: return .walking
        case .car: return .automobile
        case .none: return .walking
        case .walk: return .walking
        }
    }
}
