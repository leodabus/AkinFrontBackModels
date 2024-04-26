//
//  Requirement.swift
//  akin
//
//  Created by Scott Lydon on 8/4/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import UserNotifications
import CoreLocation

public typealias RequirementAction = (Requirement) -> Void

public enum Requirement: Equatable, Codable {

    case birthday
    case location(Location)
    case profilePic
    case pushNotification(PushNotification)
    
    public enum Location: Codable {
        case regular, requiresDeeplinkToSettings, shouldUpgradeToAlways
    }
    
    public enum PushNotification: Codable {
        case requiresDeeplinkToSettings, regular
    }

    // MARK - inits
    
    init?(from authorizationStatus: CLAuthorizationStatus) {
        switch authorizationStatus {
        case .notDetermined: self = .location(.regular)
        case .restricted: self = .location(.requiresDeeplinkToSettings)
        case .denied:  self = .location(.requiresDeeplinkToSettings)
        case .authorizedAlways:  return nil
        case .authorizedWhenInUse: self = .location(.shouldUpgradeToAlways)
        @unknown default: return nil
        }
    }
    
    @available(macOS 10.14, *)
    init?(from authStatus: UNAuthorizationStatus) {
        switch authStatus {
        case .notDetermined:
            self = .pushNotification(.regular)
        case .denied:
            self = .pushNotification(.requiresDeeplinkToSettings)
        case .authorized, .ephemeral:
            return nil
        case .provisional:
            self = .pushNotification(.requiresDeeplinkToSettings)
        @unknown default: return nil
        }
    }
    
    init?(from profilePicString: String?) {
        if profilePicString == nil {
            self = .profilePic
        } else {
            return nil
        }
    }
}
