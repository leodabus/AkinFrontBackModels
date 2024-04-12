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
extension StrongContractClient.Request {

    public static var register: Request<User.SignUp, RegisterResponse> {
        Request<User.SignUp, RegisterResponse>(path: "user/register", method: .post)
    }

    static var prefetchUser: Request<Row, Greet.User> {
        Request<Row, Greet.User>(path: "nearbyUser", method: .get)
    }

    static var prefetchQuestion: Request<Int, Question> {
        Request<Int, Question>(path: "question", method: .get)
    }

    static var triggerTwoPersonGreet: Request<TwoIDs, TwoPersonGreetResponse> {
        Request<TwoIDs, TwoPersonGreetResponse>(path: "makeCompatible", method: .post)
    }

    static var setMetersWillingToTravel: Request<Int, StandardPostResponse> {
        Request<Int, StandardPostResponse>(path: "metersWillingToTravel", method: .post)
    }

    static var reportFlagsQuestion: Request<ReportFlagsQuestion, StandardPostResponse> {
        Request<ReportFlagsQuestion, StandardPostResponse>(path: "reportFlagsQuestion", method: .post)
    }

    static var reportFlagsQuestionResponse: Request<ReportFlagsResponseRequest, ReportFlagsResponse> {
        Request<ReportFlagsResponseRequest, ReportFlagsResponse>(path: "reportFlagsQuestionResponse", method: .post)
    }

    static var reportFlagsPicURL: Request<ReportFlagsPicURLRequest, ReportFlagsResponse> {
        Request<ReportFlagsPicURLRequest, ReportFlagsResponse>(path: "reportFlagPic", method: .post)
    }

    static var getUserInformation: Request<GetUserInformationRequest, Settings> {
        Request<GetUserInformationRequest, Settings>(path: "getUserInformation", method: .get)
    }

    static var rate: Request<RateRequest, RateResponse> {
        Request<RateRequest, RateResponse>(path: "rateGreet", method: .post)
    }

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

    static var updateLocation: Request<UpdateLocationRequest, StandardPostResponse> {
        Request<UpdateLocationRequest, StandardPostResponse>(path: "updateUserLocation", method: .post)
    }

    static var assert: Request<AssertRequest, StandardPostResponse> {
        Request<AssertRequest, StandardPostResponse>(path: "assert", method: .post)
    }

    static var updateImportance: Request<UpdateImportanceRequest, StandardPostResponse> {
        Request<UpdateImportanceRequest, StandardPostResponse>(path: "updateImportance", method: .post)
    }

    static var terms: Request<AccessTokenRequest, String> {
        Request<AccessTokenRequest, String>(path: "getTerms", method: .get)
    }

    static var trackEvents: Request<TrackEventsRequest, StandardPostResponse> {
        Request<TrackEventsRequest, StandardPostResponse>(path: "trackEvents", method: .post)
    }

    static var updateEmail: Request<UpdateEmailRequest, StandardPostResponse> {
        Request<UpdateEmailRequest, StandardPostResponse>(path: "updateEmail", method: .post)
    }

    static var updateCourtesyCallSetting: Request<UpdateCourtesyCallSettingRequest, StandardPostResponse> {
        Request<UpdateCourtesyCallSettingRequest, StandardPostResponse>(path: "allowsCourtesyCall", method: .post)
    }

    static var updatePassword: Request<UpdatePasswordRequest, StandardPostResponse> {
        Request<UpdatePasswordRequest, StandardPostResponse>(path: "updatePassByOldPass", method: .post)
    }

    static var sendMake: Request<SendMakeRequest, StandardPostResponse> {
        Request<SendMakeRequest, StandardPostResponse>(path: "make", method: .post)
    }

    static var addQuestion: Request<Question, StandardPostResponse> {
        Request<Question, StandardPostResponse>(path: "addQuestion", method: .post)
    }

    static var manualGreet: Request<ManualGreetRequest, StandardPostResponse> {
        Request<ManualGreetRequest, StandardPostResponse>(path: "manualGreet", method: .post)
    }

    static var resetPassword: Request<ResetPasswordRequest, StandardPostResponse> {
        Request<ResetPasswordRequest, StandardPostResponse>(path: "resetPassword", method: .post)
    }

    static var changeEmail: Request<ChangeEmailRequest, StandardPostResponse> {
        Request<ChangeEmailRequest, StandardPostResponse>(path: "changeEmail", method: .post)
    }

    static var registerDeviceTokenError: Request<RegisterDeviceTokenErrorRequest, StandardPostResponse> {
        Request<RegisterDeviceTokenErrorRequest, StandardPostResponse>(path: "registerDeviceTokenError", method: .post)
    }

    static var registerDeviceToken: Request<RegisterDeviceTokenRequest, StandardPostResponse> {
        Request<RegisterDeviceTokenRequest, StandardPostResponse>(path: "registerDeviceToken", method: .post)
    }

    static var hideMe: Request<HideMeRequest, StandardPostResponse> {
        Request<HideMeRequest, StandardPostResponse>(path: "HideFromNearByList", method: .post)
    }

    static var registerPushKitDeviceToken: Request<RegisterPushKitDeviceTokenRequest, StandardPostResponse> {
        Request<RegisterPushKitDeviceTokenRequest, StandardPostResponse>(path: "registerPushKitDeviceToken", method: .post)
    }

    static var blockUser: Request<BlockUserRequest, StandardPostResponse> {
        Request<BlockUserRequest, StandardPostResponse>(path: "blockUser", method: .post)
    }

    static var getBlockedUsers: Request<BlockedUsersRequest, [GeneralUser]> {
        Request<BlockedUsersRequest, [GeneralUser]>(path: "getBlockedUsersList", method: .get)
    }

    static var login: Request<LoginRequest, User> {
        Request<LoginRequest, User>(path: "login", method: .post)
    }

    static var addOption: Request<AddResponseRequest, StandardPostResponse> {
        Request<AddResponseRequest, StandardPostResponse>(path: "addOption", method: .post)
    }

    static var nearbyUsers: Request<NearbyUsersRequest, Greet.User> {
        Request<NearbyUsersRequest, Greet.User>(path: "GetNearByUserList", method: .get)
    }

    static var makeUserResponse: Request<MakeUserResponseRequest, StandardPostResponse> {
        Request<MakeUserResponseRequest, StandardPostResponse>(path: "addUserResponse", method: .post)
    }

    static var getResponses: Request<GetResponsesRequest, [Question.Response]> {
        Request<GetResponsesRequest, [Question.Response]>(path: "getOptions", method: .get)
    }

    static var getQuestions: Request<GetQuestionsRequest, [Question]> {
        Request<GetQuestionsRequest, [Question]>(path: "getQuestions", method: .get)
    }

    static var logout: Request<LogoutRequest, StandardPostResponse> {
        Request<LogoutRequest, StandardPostResponse>(path: "logout", method: .post)
    }

    static var updateSettings: Request<Settings, StandardPostResponse> {
        Request<Settings, StandardPostResponse>(path: "updateUserSettings", method: .post)
    }

    static var addDisplay: Request<AddDisplayRequest, StandardPostResponse> {
        Request<AddDisplayRequest, StandardPostResponse>(path: "addDisplayPicture", method: .post)
    }

    static var uploadPic: Request<UploadPicRequest, StandardPostResponse> {
        Request<UploadPicRequest, StandardPostResponse>(path: "addDisplayPicture", method: .post)
    }

    static var updateMidGreetSettings: Request<UpdateMidGreetSettingsRequest, StandardPostResponse> {
        Request<UpdateMidGreetSettingsRequest, StandardPostResponse>(path: "updateGreetSettings", method: .post)
    }
}
