//
//  File.swift
//
//
//  Created by Scott Lydon on 4/7/24.
//

import Foundation
import CoreLocation
import StrongContractClient

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == User.SignUp, Response == RegisterResponse {
    static var register: Self {
        .init(path: "user/register", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == AccessTokenRequest, Response == TermsOfService {
    static var terms: Self {
        .init(path: "getTerms", method: .get)
    }
}

public extension StrongContractClient.Request where Payload == Int, Response == Question {
    static var prefetchQuestion: Self {
        .init(path: "question", method: .get)
    }
}

public extension StrongContractClient.Request where Payload == TwoIDs, Response == TwoPersonGreetResponse {
    static var triggerTwoPersonGreet: Self {
        .init(path: "makeCompatible", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == Int, Response == StandardPostResponse {
    static var setMetersWillingToTravel: Self {
        .init(path: "metersWillingToTravel", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == LogoutRequest, Response == StandardPostResponse {
    static var logout: Self {
        .init(path: "logout", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == ReportFlagsQuestion, Response == StandardPostResponse {
    static var reportFlagsQuestion: Self {
        .init(path: "reportFlagsQuestion", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == ReportFlagsResponseRequest, Response == ReportFlagsResponse {
    static var reportFlagsQuestionResponse: Self {
        .init(path: "reportFlagsQuestionResponse", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == ReportFlagsPicURLRequest, Response == ReportFlagsResponse {
    static var reportFlagsPicURL: Self {
        .init(path: "reportFlagPic", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == GetUserInformationRequest, Response == Settings {
    static var getUserInformation: Self {
        .init(path: "getUserInformation", method: .get)
    }
}

public extension StrongContractClient.Request where Payload == RateRequest, Response == RateResponse {
    static var rate: Self {
        .init(path: "rateGreet", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == UpdateLocationRequest, Response == StandardPostResponse {
    static var updateLocation: Self {
        .init(path: "updateUserLocation", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == AssertRequest, Response == StandardPostResponse {
    static var assert: Self {
        .init(path: "assert", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateImportanceRequest, Response == StandardPostResponse {
    static var updateImportance: Self {
        .init(path: "updateImportance", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == TrackEventsRequest, Response == StandardPostResponse {
    static var trackEvents: Self {
        .init(path: "trackEvents", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == UpdateEmailRequest, Response == StandardPostResponse {
    static var updateEmail: Self {
        .init(path: "updateEmail", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateCourtesyCallSettingRequest, Response == StandardPostResponse {
    static var updateCourtesyCallSetting: Self {
        .init(path: "allowsCourtesyCall", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdatePasswordRequest, Response == StandardPostResponse {
    static var updatePassword: Self {
        .init(path: "updatePassByOldPass", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == SendMakeRequest, Response == StandardPostResponse {
    static var sendMake: Self {
        .init(path: "make", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == Question, Response == StandardPostResponse {
    static var addQuestion: Self {
        .init(path: "addQuestion", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == ManualGreetRequest, Response == StandardPostResponse {
    static var manualGreet: Self {
        .init(path: "manualGreet", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == ResetPasswordRequest, Response == StandardPostResponse {
    static var resetPassword: Self {
        .init(path: "resetPassword", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == ChangeEmailRequest, Response == StandardPostResponse {
    static var changeEmail: Self {
        .init(path: "changeEmail", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == RegisterDeviceTokenErrorRequest, Response == StandardPostResponse {
    static var registerDeviceTokenError: Self {
        .init(path: "registerDeviceTokenError", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == RegisterDeviceTokenRequest, Response == StandardPostResponse {
    static var registerDeviceToken: Self {
        .init(path: "registerDeviceToken", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == HideMeRequest, Response == StandardPostResponse {
    static var hideMe: Self {
        .init(path: "HideFromNearByList", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == RegisterPushKitDeviceTokenRequest, Response == StandardPostResponse {
    static var registerPushKitDeviceToken: Self {
        .init(path: "registerPushKitDeviceToken", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == BlockUserRequest, Response == StandardPostResponse {
    static var blockUser: Self {
        .init(path: "blockUser", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == BlockedUsersRequest, Response == [GeneralUser] {
    static var getBlockedUsers: Self {
        .init(path: "getBlockedUsersList", method: .get)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == LoginRequest, Response == LoginResponse {
    static var login: Self {
        .init(path: "login",method: .post)
    }
}

public extension StrongContractClient.Request where Payload == AddResponseRequest, Response == StandardPostResponse {
    static var addOption: Self {
        .init(path: "addOption", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == NearbyUsersRequest, Response == Greet.User {
    static var nearbyUsers: Self {
        .init(path: "GetNearByUserList", method: .get)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == MakeUserResponseRequest, Response == StandardPostResponse {
    static var makeUserResponse: Self {
        .init(path: "addUserResponse", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == GetResponsesRequest, Response == [Question.Response] {
    static var getResponses: Self {
        .init(path: "getOptions", method: .get)
    }
}

public extension StrongContractClient.Request where Payload == GetQuestionsRequest, Response == [Question] {
    static var getQuestions: Self {
        .init(path: "getQuestions", method: .get)
    }
}

public extension StrongContractClient.Request where Payload == Settings, Response == StandardPostResponse {
    static var updateSettings: Self {
        .init(path: "updateUserSettings", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == AddDisplayRequest, Response == StandardPostResponse {
    static var addDisplay: Self {
        .init(path: "addDisplayPicture", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UploadPicRequest, Response == StandardPostResponse {
    static var uploadPic: Self {
        .init(path: "addDisplayPicture", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateMidGreetSettingsRequest, Response == StandardPostResponse {
    static var updateMidGreetSettings: Self {
        .init(path: "updateGreetSettings", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == UpdateScheduleRequest, Response == StandardPostResponse {
    static var updateSchedule: Self {
        .init(path: "updateSchedule", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateGreetRequest, Response == StandardPostResponse {
    static var updateGreet: Self {
        .init(path: "updateGreet", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateGreetSettingsRequest, Response == StandardPostResponse {
    static var updateGreetSettings: Self {
        .init(path: "updateGreetSettings", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == UpdateUserLocationRequest, Response == StandardPostResponse {
    static var updateUserLocation: Self {
        .init(path: "user/location/context", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == SilentPushLocationUpdatesRequest, Response == StandardPostResponse {
    static var silentPushLocationUpdates: Self {
        .init(path: "shouldUpdateLocation", method: .post)
    }
}

//// Conversion examples integrated with request structures
//public extension StrongContractClient.Request where Payload == TrackEventsRequest, Response == StandardPostResponse {
//    static var trackEvents: Self {
//        .init(path: "trackEvents", method: .post)
//    }
//}
//
//public extension StrongContractClient.Request where Payload == Settings, Response == StandardPostResponse {
//    static var updateSettings: Self {
//        .init(path: "updateUserSettings", method: .post)
//    }
//}
//
//public extension StrongContractClient.Request where Payload == AddDisplayRequest, Response == StandardPostResponse {
//    static var addDisplay: Self {
//        .init(path: "addDisplayPicture", method: .post)
//    }
//}
