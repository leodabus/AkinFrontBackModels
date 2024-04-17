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
extension StrongContractClient.Request where Payload == User.SignUp, Response == RegisterResponse {
    public static var register: Request {
        Request(path: "user/register", method: .post)
    }
}

extension StrongContractClient.Request where Payload == Row, Response == Greet.User {
    static var prefetchUser: Request {
        Request(path: "nearbyUser", method: .get)
    }
}

extension StrongContractClient.Request where Payload == Int, Response == Question {
    static var prefetchQuestion: Request {
        Request(path: "question", method: .get)
    }
}

extension StrongContractClient.Request where Payload == TwoIDs, Response == TwoPersonGreetResponse {
    static var triggerTwoPersonGreet: Request {
        Request(path: "makeCompatible", method: .post)
    }
}

extension StrongContractClient.Request where Payload == Int, Response == StandardPostResponse {
    static var setMetersWillingToTravel: Request {
        Request(path: "metersWillingToTravel", method: .post)
    }
}


extension StrongContractClient.Request where Payload == LogoutRequest, Response == StandardPostResponse {
    static var logout: Request {
        Request(path: "logout", method: .post)
    }
}

// Conversion examples integrated with request structures
extension StrongContractClient.Request where Payload == ReportFlagsQuestion, Response == StandardPostResponse {
    public static var reportFlagsQuestion: Request<Payload, Response> {
        Request(path: "reportFlagsQuestion", method: .post)
    }
}

extension StrongContractClient.Request where Payload == ReportFlagsResponseRequest, Response == ReportFlagsResponse {
    public static var reportFlagsQuestionResponse: Request<Payload, Response> {
        Request(path: "reportFlagsQuestionResponse", method: .post)
    }
}

extension StrongContractClient.Request where Payload == ReportFlagsPicURLRequest, Response == ReportFlagsResponse {
    public static var reportFlagsPicURL: Request<Payload, Response> {
        Request(path: "reportFlagPic", method: .post)
    }
}

extension StrongContractClient.Request where Payload == GetUserInformationRequest, Response == Settings {
    public static var getUserInformation: Request<Payload, Response> {
        Request(path: "getUserInformation", method: .get)
    }
}

extension StrongContractClient.Request where Payload == RateRequest, Response == RateResponse {
    public static var rate: Request<Payload, Response> {
        Request(path: "rateGreet", method: .post)
    }
}

// Conversion examples integrated with request structures
extension StrongContractClient.Request where Payload == UpdateLocationRequest, Response == StandardPostResponse {
    public static var updateLocation: Request {
        Request(path: "updateUserLocation", method: .post)
    }
}

extension StrongContractClient.Request where Payload == AssertRequest, Response == StandardPostResponse {
    public static var assert: Request {
        Request(path: "assert", method: .post)
    }
}

extension StrongContractClient.Request where Payload == UpdateImportanceRequest, Response == StandardPostResponse {
    public static var updateImportance: Request {
        Request(path: "updateImportance", method: .post)
    }
}

extension StrongContractClient.Request where Payload == AccessTokenRequest, Response == String {
    public static var terms: Request {
        Request(path: "getTerms", method: .get)
    }
}

extension StrongContractClient.Request where Payload == TrackEventsRequest, Response == StandardPostResponse {
    public static var trackEvents: Request {
        Request(path: "trackEvents", method: .post)
    }
}

// Conversion examples integrated with request structures
extension StrongContractClient.Request where Payload == UpdateEmailRequest, Response == StandardPostResponse {
    static var updateEmail: Request {
        Request(path: "updateEmail", method: .post)
    }
}

extension StrongContractClient.Request where Payload == UpdateCourtesyCallSettingRequest, Response == StandardPostResponse {
    static var updateCourtesyCallSetting: Request {
        Request(path: "allowsCourtesyCall", method: .post)
    }
}

extension StrongContractClient.Request where Payload == UpdatePasswordRequest, Response == StandardPostResponse {
    static var updatePassword: Request {
        Request(path: "updatePassByOldPass", method: .post)
    }
}

extension StrongContractClient.Request where Payload == SendMakeRequest, Response == StandardPostResponse {
    static var sendMake: Request {
        Request(path: "make", method: .post)
    }
}

extension StrongContractClient.Request where Payload == Question, Response == StandardPostResponse {
    static var addQuestion: Request {
        Request(path: "addQuestion", method: .post)
    }
}

// Conversion examples integrated with request structures
extension StrongContractClient.Request where Payload == ManualGreetRequest, Response == StandardPostResponse {
    public static var manualGreet: Request {
        Request(path: "manualGreet", method: .post)
    }
}

extension StrongContractClient.Request where Payload == ResetPasswordRequest, Response == StandardPostResponse {
    public static var resetPassword: Request {
        Request(path: "resetPassword", method: .post)
    }
}

extension StrongContractClient.Request where Payload == ChangeEmailRequest, Response == StandardPostResponse {
    public static var changeEmail: Request {
        Request(path: "changeEmail", method: .post)
    }
}

// Conversion examples integrated with request structures
extension StrongContractClient.Request where Payload == RegisterDeviceTokenErrorRequest, Response == StandardPostResponse {

    public static var registerDeviceTokenError: Request {
        Request(path: "registerDeviceTokenError", method: .post)
    }
}

extension StrongContractClient.Request where Payload == RegisterDeviceTokenRequest, Response == StandardPostResponse {

    public static var registerDeviceToken: Request {
        Request(path: "registerDeviceToken", method: .post)
    }
}

extension StrongContractClient.Request where Payload == HideMeRequest, Response == StandardPostResponse {

    public static var hideMe: Request {
        Request(path: "HideFromNearByList", method: .post)
    }
}

// Conversion examples integrated with request structures

extension StrongContractClient.Request where Payload == RegisterPushKitDeviceTokenRequest, Response == StandardPostResponse {
    public static var registerPushKitDeviceToken: Request {
        Request(path: "registerPushKitDeviceToken", method: .post)
    }
}

extension StrongContractClient.Request where Payload == BlockUserRequest, Response == StandardPostResponse {
    public static var blockUser: Request {
        Request(path: "blockUser", method: .post)
    }
}

extension StrongContractClient.Request where Payload == BlockedUsersRequest, Response == [GeneralUser] {
    public static var getBlockedUsers: Request {
        Request(path: "getBlockedUsersList", method: .get)
    }
}

// Conversion examples integrated with request structures
extension StrongContractClient.Request where Payload == LoginRequest, Response == User {
    public static var login: Request {
        Request(path: "login", method: .post)
    }
}

extension StrongContractClient.Request where Payload == AddResponseRequest, Response == StandardPostResponse {
    public static var addOption: Request {
        Request(path: "addOption", method: .post)
    }
}

extension StrongContractClient.Request where Payload == NearbyUsersRequest, Response == Greet.User {
    public static var nearbyUsers: Request {
        Request(path: "GetNearByUserList", method: .get)
    }
}

// Conversion examples integrated with request structures
extension StrongContractClient.Request where Payload == MakeUserResponseRequest, Response == StandardPostResponse {
    static var makeUserResponse: Request {
        Request(path: "addUserResponse", method: .post)
    }
}

extension StrongContractClient.Request where Payload == GetResponsesRequest, Response == [Question.Response] {
    static var getResponses: Request {
        Request(path: "getOptions", method: .get)
    }
}

extension StrongContractClient.Request where Payload == GetQuestionsRequest, Response == [Question] {
    static var getQuestions: Request {
        Request(path: "getQuestions", method: .get)
    }
}


extension StrongContractClient.Request where Payload == Settings, Response == StandardPostResponse {
    public static var updateSettings: Request {
        Request(path: "updateUserSettings", method: .post)
    }
}

extension StrongContractClient.Request where Payload == AddDisplayRequest, Response == StandardPostResponse {
    public static var addDisplay: Request {
        Request(path: "addDisplayPicture", method: .post)
    }
}

extension StrongContractClient.Request where Payload == UploadPicRequest, Response == StandardPostResponse {

    static var uploadPic: Request {
        Request(path: "addDisplayPicture", method: .post)
    }
}

extension StrongContractClient.Request where Payload == UpdateMidGreetSettingsRequest, Response == StandardPostResponse {

    static var updateMidGreetSettings: Request {
        Request(path: "updateGreetSettings", method: .post)
    }
}




// Conversion examples integrated with request structures
extension StrongContractClient.Request {

//    public static var register: Request<User.SignUp, RegisterResponse> {
//        Request<User.SignUp, RegisterResponse>(path: "user/register", method: .post)
//    }

//    static var prefetchUser: Request<Row, Greet.User> {
//        Request<Row, Greet.User>(path: "nearbyUser", method: .get)
//    }

//    static var prefetchQuestion: Request<Int, Question> {
//        Request<Int, Question>(path: "question", method: .get)
//    }

//    static var triggerTwoPersonGreet: Request<TwoIDs, TwoPersonGreetResponse> {
//        Request<TwoIDs, TwoPersonGreetResponse>(path: "makeCompatible", method: .post)
//    }

//    static var setMetersWillingToTravel: Request<Int, StandardPostResponse> {
//        Request<Int, StandardPostResponse>(path: "metersWillingToTravel", method: .post)
//    }

//    static var reportFlagsQuestion: Request<ReportFlagsQuestion, StandardPostResponse> {
//        Request<ReportFlagsQuestion, StandardPostResponse>(path: "reportFlagsQuestion", method: .post)
//    }
//
//    static var reportFlagsQuestionResponse: Request<ReportFlagsResponseRequest, ReportFlagsResponse> {
//        Request<ReportFlagsResponseRequest, ReportFlagsResponse>(path: "reportFlagsQuestionResponse", method: .post)
//    }
//
//    static var reportFlagsPicURL: Request<ReportFlagsPicURLRequest, ReportFlagsResponse> {
//        Request<ReportFlagsPicURLRequest, ReportFlagsResponse>(path: "reportFlagPic", method: .post)
//    }
//
//    static var getUserInformation: Request<GetUserInformationRequest, Settings> {
//        Request<GetUserInformationRequest, Settings>(path: "getUserInformation", method: .get)
//    }
//
//    static var rate: Request<RateRequest, RateResponse> {
//        Request<RateRequest, RateResponse>(path: "rateGreet", method: .post)
//    }

    static var updateSchedule: Request<UpdateScheduleRequest, StandardPostResponse> {
        Request<UpdateScheduleRequest, StandardPostResponse>(path: "updateSchedule", method: .post)
    }

    static var updateGreet: Request<UpdateGreetRequest, StandardPostResponse> {
        Request<UpdateGreetRequest, StandardPostResponse>(path: "updateGreet", method: .post)
    }

    static var updateGreetSettings: Request<UpdateGreetSettingsRequest, StandardPostResponse> {
        Request<UpdateGreetSettingsRequest, StandardPostResponse>(path: "updateGreetSettings", method: .post)
    }

    static var updateUserLocation: Request<UpdateUserLocationRequest, StandardPostResponse> {
        Request<UpdateUserLocationRequest, StandardPostResponse>(path: "user/location/context", method: .post)
    }

    static var silentPushLocationUpdates: Request<SilentPushLocationUpdatesRequest, StandardPostResponse> {
        Request<SilentPushLocationUpdatesRequest, StandardPostResponse>(path: "shouldUpdateLocation", method: .post)
    }

//    static var updateLocation: Request<UpdateLocationRequest, StandardPostResponse> {
//        Request<UpdateLocationRequest, StandardPostResponse>(path: "updateUserLocation", method: .post)
//    }
//
//    static var assert: Request<AssertRequest, StandardPostResponse> {
//        Request<AssertRequest, StandardPostResponse>(path: "assert", method: .post)
//    }
//
//    static var updateImportance: Request<UpdateImportanceRequest, StandardPostResponse> {
//        Request<UpdateImportanceRequest, StandardPostResponse>(path: "updateImportance", method: .post)
//    }
//
//    static var terms: Request<AccessTokenRequest, String> {
//        Request<AccessTokenRequest, String>(path: "getTerms", method: .get)
//    }

    static var trackEvents: Request<TrackEventsRequest, StandardPostResponse> {
        Request<TrackEventsRequest, StandardPostResponse>(path: "trackEvents", method: .post)
    }

//    static var updateEmail: Request<UpdateEmailRequest, StandardPostResponse> {
//        Request<UpdateEmailRequest, StandardPostResponse>(path: "updateEmail", method: .post)
//    }
//
//    static var updateCourtesyCallSetting: Request<UpdateCourtesyCallSettingRequest, StandardPostResponse> {
//        Request<UpdateCourtesyCallSettingRequest, StandardPostResponse>(path: "allowsCourtesyCall", method: .post)
//    }
//
//    static var updatePassword: Request<UpdatePasswordRequest, StandardPostResponse> {
//        Request<UpdatePasswordRequest, StandardPostResponse>(path: "updatePassByOldPass", method: .post)
//    }
//
//    static var sendMake: Request<SendMakeRequest, StandardPostResponse> {
//        Request<SendMakeRequest, StandardPostResponse>(path: "make", method: .post)
//    }
//
//    static var addQuestion: Request<Question, StandardPostResponse> {
//        Request<Question, StandardPostResponse>(path: "addQuestion", method: .post)
//    }

//    static var manualGreet: Request<ManualGreetRequest, StandardPostResponse> {
//        Request<ManualGreetRequest, StandardPostResponse>(path: "manualGreet", method: .post)
//    }
//
//    static var resetPassword: Request<ResetPasswordRequest, StandardPostResponse> {
//        Request<ResetPasswordRequest, StandardPostResponse>(path: "resetPassword", method: .post)
//    }
//
//    static var changeEmail: Request<ChangeEmailRequest, StandardPostResponse> {
//        Request<ChangeEmailRequest, StandardPostResponse>(path: "changeEmail", method: .post)
//    }

//    static var registerDeviceTokenError: Request<RegisterDeviceTokenErrorRequest, StandardPostResponse> {
//        Request<RegisterDeviceTokenErrorRequest, StandardPostResponse>(path: "registerDeviceTokenError", method: .post)
//    }
//
//    static var registerDeviceToken: Request<RegisterDeviceTokenRequest, StandardPostResponse> {
//        Request<RegisterDeviceTokenRequest, StandardPostResponse>(path: "registerDeviceToken", method: .post)
//    }
//
//    static var hideMe: Request<HideMeRequest, StandardPostResponse> {
//        Request<HideMeRequest, StandardPostResponse>(path: "HideFromNearByList", method: .post)
//    }

//    static var registerPushKitDeviceToken: Request<RegisterPushKitDeviceTokenRequest, StandardPostResponse> {
//        Request<RegisterPushKitDeviceTokenRequest, StandardPostResponse>(path: "registerPushKitDeviceToken", method: .post)
//    }
//
//    static var blockUser: Request<BlockUserRequest, StandardPostResponse> {
//        Request<BlockUserRequest, StandardPostResponse>(path: "blockUser", method: .post)
//    }
//
//    static var getBlockedUsers: Request<BlockedUsersRequest, [GeneralUser]> {
//        Request<BlockedUsersRequest, [GeneralUser]>(path: "getBlockedUsersList", method: .get)
//    }

//    static var login: Request<LoginRequest, User> {
//        Request<LoginRequest, User>(path: "login", method: .post)
//    }
//
//    static var addOption: Request<AddResponseRequest, StandardPostResponse> {
//        Request<AddResponseRequest, StandardPostResponse>(path: "addOption", method: .post)
//    }
//
//    static var nearbyUsers: Request<NearbyUsersRequest, Greet.User> {
//        Request<NearbyUsersRequest, Greet.User>(path: "GetNearByUserList", method: .get)
//    }

//    static var makeUserResponse: Request<MakeUserResponseRequest, StandardPostResponse> {
//        Request<MakeUserResponseRequest, StandardPostResponse>(path: "addUserResponse", method: .post)
//    }
//
//    static var getResponses: Request<GetResponsesRequest, [Question.Response]> {
//        Request<GetResponsesRequest, [Question.Response]>(path: "getOptions", method: .get)
//    }
//
//    static var getQuestions: Request<GetQuestionsRequest, [Question]> {
//        Request<GetQuestionsRequest, [Question]>(path: "getQuestions", method: .get)
//    }

//    static var logout: Request<LogoutRequest, StandardPostResponse> {
//        Request<LogoutRequest, StandardPostResponse>(path: "logout", method: .post)
//    }

    static var updateSettings: Request<Settings, StandardPostResponse> {
        Request<Settings, StandardPostResponse>(path: "updateUserSettings", method: .post)
    }

    static var addDisplay: Request<AddDisplayRequest, StandardPostResponse> {
        Request<AddDisplayRequest, StandardPostResponse>(path: "addDisplayPicture", method: .post)
    }

//    static var uploadPic: Request<UploadPicRequest, StandardPostResponse> {
//        Request<UploadPicRequest, StandardPostResponse>(path: "addDisplayPicture", method: .post)
//    }
//
//    static var updateMidGreetSettings: Request<UpdateMidGreetSettingsRequest, StandardPostResponse> {
//        Request<UpdateMidGreetSettingsRequest, StandardPostResponse>(path: "updateGreetSettings", method: .post)
//    }
}
