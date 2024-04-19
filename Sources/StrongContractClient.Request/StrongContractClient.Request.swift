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
    static var register: Request {
        Request(path: "user/register", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == Int, Response == Question {
    public static var prefetchQuestion: Request {
        Request(path: "question", method: .get)
    }
}

public extension StrongContractClient.Request where Payload == TwoIDs, Response == TwoPersonGreetResponse {
    public static var triggerTwoPersonGreet: Request {
        Request(path: "makeCompatible", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == Int, Response == StandardPostResponse {
    public static var setMetersWillingToTravel: Request {
        Request(path: "metersWillingToTravel", method: .post)
    }
}


public extension StrongContractClient.Request where Payload == LogoutRequest, Response == StandardPostResponse {
    public static var logout: Request {
        Request(path: "logout", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == ReportFlagsQuestion, Response == StandardPostResponse {
    public static var reportFlagsQuestion: Request {
        Request(path: "reportFlagsQuestion", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == ReportFlagsResponseRequest, Response == ReportFlagsResponse {
    public static var reportFlagsQuestionResponse: Request {
        Request(path: "reportFlagsQuestionResponse", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == ReportFlagsPicURLRequest, Response == ReportFlagsResponse {
    public static var reportFlagsPicURL: Request {
        Request(path: "reportFlagPic", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == GetUserInformationRequest, Response == Settings {
    public static var getUserInformation: Request {
        Request(path: "getUserInformation", method: .get)
    }
}

public extension StrongContractClient.Request where Payload == RateRequest, Response == RateResponse {
    public static var rate: Request {
        Request(path: "rateGreet", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == UpdateLocationRequest, Response == StandardPostResponse {
    public static var updateLocation: Request {
        Request(path: "updateUserLocation", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == AssertRequest, Response == StandardPostResponse {
    public static var assert: Request {
        Request(path: "assert", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateImportanceRequest, Response == StandardPostResponse {
    public static var updateImportance: Request {
        Request(path: "updateImportance", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == AccessTokenRequest, Response == String {
    public static var terms: Request {
        Request(path: "getTerms", method: .get)
    }
}

public extension StrongContractClient.Request where Payload == TrackEventsRequest, Response == StandardPostResponse {
    public static var trackEvents: Request {
        Request(path: "trackEvents", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == UpdateEmailRequest, Response == StandardPostResponse {
    public static var updateEmail: Request {
        Request(path: "updateEmail", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateCourtesyCallSettingRequest, Response == StandardPostResponse {
    public static var updateCourtesyCallSetting: Request {
        Request(path: "allowsCourtesyCall", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdatePasswordRequest, Response == StandardPostResponse {
    public static var updatePassword: Request {
        Request(path: "updatePassByOldPass", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == SendMakeRequest, Response == StandardPostResponse {
    public static var sendMake: Request {
        Request(path: "make", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == Question, Response == StandardPostResponse {
    public static var addQuestion: Request {
        Request(path: "addQuestion", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == ManualGreetRequest, Response == StandardPostResponse {
    public static var manualGreet: Request {
        Request(path: "manualGreet", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == ResetPasswordRequest, Response == StandardPostResponse {
    public static var resetPassword: Request {
        Request(path: "resetPassword", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == ChangeEmailRequest, Response == StandardPostResponse {
    public static var changeEmail: Request {
        Request(path: "changeEmail", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == RegisterDeviceTokenErrorRequest, Response == StandardPostResponse {

    public static var registerDeviceTokenError: Request {
        Request(path: "registerDeviceTokenError", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == RegisterDeviceTokenRequest, Response == StandardPostResponse {

    public static var registerDeviceToken: Request {
        Request(path: "registerDeviceToken", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == HideMeRequest, Response == StandardPostResponse {

    public static var hideMe: Request {
        Request(path: "HideFromNearByList", method: .post)
    }
}

// Conversion examples integrated with request structures

public extension StrongContractClient.Request where Payload == RegisterPushKitDeviceTokenRequest, Response == StandardPostResponse {
    public static var registerPushKitDeviceToken: Request {
        Request(path: "registerPushKitDeviceToken", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == BlockUserRequest, Response == StandardPostResponse {
    public static var blockUser: Request {
        Request(path: "blockUser", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == BlockedUsersRequest, Response == [GeneralUser] {
    public static var getBlockedUsers: Request {
        Request(path: "getBlockedUsersList", method: .get)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == LoginRequest, Response == User {
    public static var login: Request {
        Request(path: "login", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == AddResponseRequest, Response == StandardPostResponse {
    public static var addOption: Request {
        Request(path: "addOption", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == NearbyUsersRequest, Response == Greet.User {
    public static var nearbyUsers: Request {
        Request(path: "GetNearByUserList", method: .get)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == MakeUserResponseRequest, Response == StandardPostResponse {
    public static var makeUserResponse: Request {
        Request(path: "addUserResponse", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == GetResponsesRequest, Response == [Question.Response] {
    public static var getResponses: Request {
        Request(path: "getOptions", method: .get)
    }
}

public extension StrongContractClient.Request where Payload == GetQuestionsRequest, Response == [Question] {
    public static var getQuestions: Request {
        Request(path: "getQuestions", method: .get)
    }
}


public extension StrongContractClient.Request where Payload == Settings, Response == StandardPostResponse {
    public static var updateSettings: Request {
        Request(path: "updateUserSettings", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == AddDisplayRequest, Response == StandardPostResponse {
    public static var addDisplay: Request {
        Request(path: "addDisplayPicture", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UploadPicRequest, Response == StandardPostResponse {

    public static var uploadPic: Request {
        Request(path: "addDisplayPicture", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateMidGreetSettingsRequest, Response == StandardPostResponse {

    public static var updateMidGreetSettings: Request {
        Request(path: "updateGreetSettings", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == UpdateScheduleRequest, Response == StandardPostResponse {
    public static var updateSchedule: Request {
        Request(path: "updateSchedule", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateGreetRequest, Response == StandardPostResponse {
    public static var updateGreet: Request {
        Request(path: "updateGreet", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == UpdateGreetSettingsRequest, Response == StandardPostResponse {
    public static var updateGreetSettings: Request {
        Request(path: "updateGreetSettings", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request where Payload == UpdateUserLocationRequest, Response == StandardPostResponse {

    public static var updateUserLocation: Request {
        Request(path: "user/location/context", method: .post)
    }
}

public extension StrongContractClient.Request where Payload == SilentPushLocationUpdatesRequest, Response == StandardPostResponse {

    public static var silentPushLocationUpdates: Request {
        Request(path: "shouldUpdateLocation", method: .post)
    }
}

//// Conversion examples integrated with request structures
//public extension StrongContractClient.Request where Payload == TrackEventsRequest, Response == StandardPostResponse {
//    public static var trackEvents: Request {
//        Request(path: "trackEvents", method: .post)
//    }
//}
//
//public extension StrongContractClient.Request where Payload == Settings, Response == StandardPostResponse {
//    public static var updateSettings: Request {
//        Request(path: "updateUserSettings", method: .post)
//    }
//}
//
//public extension StrongContractClient.Request where Payload == AddDisplayRequest, Response == StandardPostResponse {
//    public static var addDisplay: Request {
//        Request(path: "addDisplayPicture", method: .post)
//    }
//}
