//
//  File.swift
//
//
//  Created by Scott Lydon on 4/7/24.
//

import Foundation
import CoreLocation
import StrongContractClient

public extension StrongContractClient.Request
where Payload == LoginRequest,
      Response == User {
    static var login: Self {
        .init(path: "login",method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == Empty,
      Response == Settings {
    static var fillSettings: Self {
        .init(path: "fillSettings", method: .get)
    }
}


public extension StrongContractClient.Request
where Payload == String, // image id
      Response == Data { // image data
    static var profileImage: Self {
        .init(path: "profileImage", method: .get)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == User.SignUp,
      Response == RegisterResponse {

    /// Registers a new user
    static var register: Self {
        .init(path: "user/register", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == Empty,
      Response == TermsOfService {

    /// Gets the terms and conditions of using the app
    static var terms: Self {
        .init(path: "getTerms", method: .get)
    }
}

public extension StrongContractClient.Request
where Payload == Int,
      Response == Question {

    /// Gets a question based on the index in a list, for the purpose of smooth scrolling.
    static var prefetchQuestion: Self {
        .init(path: "question", method: .get)
    }
}

public extension StrongContractClient.Request
where Payload == TwoIDs,
      Response == TwoPersonGreetResponse {

    /// Used for manually triggering a "two-person-right-now-meetup" which entails several steps
    /// 1. Server side takes the two ids, and finds the corresponding two users. (Started by this `Request`)
    /// 2. Sends a push notificaiton to the client side.
    /// 3. Client side converts the push notification (on both user's client devices) to a Greet type.
    /// 4. Client side presents the option to meet the other user in a double blind fashion.
    static var triggerTwoPersonGreet: Self {
        .init(path: "makeCompatible", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == ManualGreetRequest,
      Response == StandardPostResponse {

    /// When a user taps on a nearby user, they can attempt to initiate a manual Greet.
    /// Or a meetup triggered by one user tapping on another nearby user in a list.
    static var manualGreet: Self {
        .init(path: "manualGreet", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == Int,
      Response == StandardPostResponse {

    /// This updates the meters a user is willing to travel for a greet/in-person meetup
    static var setMetersWillingToTravel: Self {
        .init(path: "metersWillingToTravel", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == Empty,
      Response == StandardPostResponse {

    /// logs out the current user
    static var logout: Self {
        .init(path: "logout", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == ReportFlagsQuestion,
      Response == StandardPostResponse {

    /// If a user believes a `Question` violates the terms or is otherwise dangerous, this sends that opinion.
    static var reportFlagsQuestion: Self {
        .init(path: "reportFlagsQuestion", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == ReportFlagsResponseRequest,
      Response == ReportFlagsResponse {

    /// If a user believes a `Response` violates the terms or is otherwise dangerous, this sends that opinion.
    static var reportFlagsQuestionResponse: Self {
        .init(path: "reportFlagsQuestionResponse", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == ReportFlagsPicURLRequest,
      Response == ReportFlagsResponse {

    /// If a user believes an image violates the terms or is otherwise dangerous, this sends that opinion.
    static var reportFlagsPicURL: Self {
        .init(path: "reportFlagPic", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == Empty,
      Response == Settings {

    /// Gets the user's Settings information.
    static var getUserInformation: Self {
        .init(path: "getUserInformation", method: .get)
    }
}

public extension StrongContractClient.Request
where Payload == RateRequest,
      Response == RateResponse {

    /// After a Greet/two-person-meetup concludes (either one opts to end the meetup or both users met up and concluded).
    /// Then each user may send in their rating of how well the greet went.
    static var rate: Self {
        .init(path: "rateGreet", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == UpdateLocationRequest,
      Response == StandardPostResponse {

    /// In order for the system to determine whether two compatible users are close enough to meet up,
    /// the system must know each's approximate location.
    static var updateLocation: Self {
        .init(path: "updateUserLocation", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == AssertRequest,
      Response == StandardPostResponse {

    /// I believe this was added to update the server side with issues.
    static var assert: Self {
        .init(path: "assert", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == UpdateImportanceRequest,
      Response == StandardPostResponse {

    /// This Request is provided so that users can rate the importance of a question.  A user can answer each questions
    /// twice, once to convey how they would answer and once to say how their ideal match would answer.
    /// Some questions are more important than others.  For example, `"what is your favorite ice cream flavor?"`
    /// might be less important for matchmaking than `"What is your moral philogophy?"` for one user and the inverse for
    /// another. And so you may rate the importance of one as `Question.Importance` as `.very`important whereas another
    /// might be rated as `.trivial`.
    static var updateImportance: Self {
        .init(path: "updateImportance", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == TrackEventsRequest,
      Response == StandardPostResponse {

    /// Used to track user activity for the purpose of `UX`.  And to understand how users are interacting and using the app.
    /// See `class Tracking {`.  you can add events, and then update the server side by pinging this `Request`
    static var trackEvents: Self {
        .init(path: "trackEvents", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == UpdateEmailRequest,
      Response == StandardPostResponse {

    /// For a user to update/change their email address.
    static var updateEmail: Self {
        .init(path: "updateEmail", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == UpdateCourtesyCallSettingRequest,
      Response == StandardPostResponse {

    /// For the two person greet, sometimes a push notification might not be loud enough or prominent enough
    /// To avoid missing opportunities, this request is provided for people to opt in or out of a courtesy call when a
    /// Meetup is initiaited.
    static var updateCourtesyCallSetting: Self {
        .init(path: "allowsCourtesyCall", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == UpdatePasswordRequest,
      Response == StandardPostResponse {

    /// updates this users' password.
    static var updatePassword: Self {
        .init(path: "updatePassByOldPass", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == SendMakeRequest,
      Response == StandardPostResponse {

    /// Sends the phone information for documentation to learn about user research.
    static var sendMake: Self {
        .init(path: "make", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == Question,
      Response == StandardPostResponse {

    /// Any user can add questions to the shared questionnaire.
    /// This adds a question.
    static var addQuestion: Self {
        .init(path: "addQuestion", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == ResetPasswordRequest,
      Response == StandardPostResponse {

    /// Used to reset the password.
    static var resetPassword: Self {
        .init(path: "resetPassword", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == ChangeEmailRequest,
      Response == StandardPostResponse {

    /// Used to reset the email.
    static var changeEmail: Self {
        .init(path: "changeEmail", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == RegisterDeviceTokenErrorRequest,
      Response == StandardPostResponse {

    /// Notifies the server of an error registering the device token.
    static var registerDeviceTokenError: Self {
        .init(path: "registerDeviceTokenError", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == RegisterDeviceTokenRequest,
      Response == StandardPostResponse {

    /// Sends the device token to the server.
    static var registerDeviceToken: Self {
        .init(path: "registerDeviceToken", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == HideMeRequest,
      Response == StandardPostResponse {

    /// Disables greet.  Makes it so that this user doesn't show up as a greet
    /// option when there are more than one potential meetup option.
    static var hideMe: Self {
        .init(path: "HideFromNearByList", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == RegisterPushKitDeviceTokenRequest,
      Response == StandardPostResponse {

    /// Registers push kit device token.
    static var registerPushKitDeviceToken: Self {
        .init(path: "registerPushKitDeviceToken", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == BlockUserRequest,
      Response == StandardPostResponse {

    /// Blocks a user from being considered for meetups with this user.
    static var blockUser: Self {
        .init(path: "blockUser", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == Empty,
      Response == [GeneralUser] {

    /// Returns a list of users that are blocked by this user.
    static var getBlockedUsers: Self {
        .init(path: "getBlockedUsersList", method: .get)
    }
}

public extension StrongContractClient.Request
where Payload == LoginRequest,
      Response == AkinFrontBackModels.User {
    static var login2: Self {
        .init(path: "login",method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == AddResponseRequest,
        Response == StandardPostResponse {

    /// To deprecate `add(response: Question.Response, questionID: String)`
    /// Add a Response to a question.
    static var addOption: Self {
        .init(path: "addOption", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == NearbyUsersRequest,
      Response == Greet.User {

    /// To deprecate:  `static var nearbyUsers: URL {`
    /// Get a list of nearby users.
    static var nearbyUsers: Self {
        .init(path: "GetNearByUserList", method: .get)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == MakeUserResponseRequest,
      Response == StandardPostResponse {

    /**
     **Deprecates**:
     ```
     static func make(
         my: Question.Response.Selections.MyTheir.Choice?,
         their: Question.Response.Selections.MyTheir.Choice?,
         forResponseID: Int,
         forQuestionID: Int,
         forContext: Context
     )
     ```
        This is intended for adding choices.  For example, there might be a question: "Do you smoke ciggarettes?"
        If someone smokes but they want to quit and meet people that don't smoke, they might choose the option: "Yes"
        And for the other person, they might choose "No" because they want to meet people that don't smoke.
     */
    static var makeUserResponse: Self {
        .init(path: "addUserResponse", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == GetResponsesRequest,
      Response == [Question.Response] {

    /// Gets responses that have been added to a question.
    static var getResponses: Self {
        .init(path: "getResponses", method: .get)
    }
}

public extension StrongContractClient.Request
where Payload == GetQuestionsRequest,
      Response == [Question] {

    /// Gets questions for the match making questionnaire.
    static var getQuestions: Self {
        .init(path: "getQuestions", method: .get)
    }
}

public extension StrongContractClient.Request
where Payload == Settings,
      Response == StandardPostResponse {

    ///  update the settings
    static var updateSettings: Self {
        .init(path: "updateUserSettings", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == Empty,
      Response == StandardPostResponse {

    /// Add a display image.
    static var addDisplay: Self {
        .init(path: "addDisplayPicture", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == UpdateMidGreetSettingsRequest,
      Response == StandardPostResponse {

    /// Deprecates: `URLRequest.update(midGreetSettings: self.greet.thisSettings)?.post.task()`
    /// There are multiple phases and permutations that users go through during the meetup process.
    /// This sends the user's intention to conclude the greet either because the users met up, or because this user wants to reject the meetup
    static var updateMidGreetSettings: Self {
        .init(path: "updateGreetSettings", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == Empty,
      Response == StandardPostResponse {

    /// Send other user updates to the Greet. For example, if the user exceeded the range of the meetup location.
    /// Look to the Greet Unit tests to get a sense of which combination of events create which outcomes.
    static var updateGreet: Self {
        .init(path: "updateGreet", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == [Week.Day],
      Response == StandardPostResponse {

    /// This is used to update when people are available to meet up with others.
    static var updateSchedule: Self {
        .init(path: "updateSchedule", method: .post)
    }
}

// Conversion examples integrated with request structures
public extension StrongContractClient.Request
where Payload == UpdateUserLocationRequest,
      Response == StandardPostResponse {

    /// Sends an updated user location.
    static var updateUserLocation: Self {
        .init(path: "user/location/context", method: .post)
    }
}

public extension StrongContractClient.Request
where Payload == SilentPushLocationUpdatesRequest,
      Response == StandardPostResponse {

    /// Disables/enables silent push notification updates.
    static var silentPushLocationUpdates: Self {
        .init(path: "shouldUpdateLocation", method: .post)
    }
}
