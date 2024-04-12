//
//  Settings.swift
//  akin
//
//  Created by Scott Lydon on 8/4/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

// MARK - TODO after figuring out the user structure, put settings nested in this user/viewing user.

struct Settings: Codable {

    /// Set this 
    static var shared: Self?

    // MARK - properties
    
    var vibrate: Bool = false
    var ring: Bool = false
    var displayPic: String?
    var emailPrimary: String?
    var userID: Int = -1
    var phone: String?
    var contexts: [Context] = []
    var username: String? = nil
    var allowedGreetingMethods: [Greet.Method] = [.wave]
    var profileImg: Data? = nil
    var metersWillingToTravel: Int = 150
    var dob: String?

    var profilePicAlternator: TypeAlternator<Data, String>? {
        TypeAlternator(profileImg, displayPic)
    }
    
    var isOnSocial: Bool {
        contexts.contains(.social)
    }
    
    var isOnRomance: Bool {
        contexts.contains(.romance)
    }
    
    mutating func add(greetingMethod: Greet.Method, shouldAdd: Bool) {
        if !shouldAdd {return}
        allowedGreetingMethods.append(greetingMethod)
    }
    
    var greetingMethodText: String {
        if allowedGreetingMethods.isEmpty {
            return "wave"
        }
        if allowedGreetingMethods.hasExactlyOne {
            return allowedGreetingMethods.first?.rawValue ?? ""
        }
        return "Multiple"
    }
    
    func has(_ context: Context) -> Bool {
        contexts.contains(context)
    }
    
    func has(method greetingMethod: Greet.Method) -> Bool {
        allowedGreetingMethods.contains(greetingMethod)
    }
    
    func has(_ greetingMethod: Greet.Method) -> String {
        has(method: greetingMethod).strInt
    }
    
    var contextText: String {
        contexts.count == 2 ? "Both on" :
        contexts.first.map { "\($0.rawValue) on" } ?? "Both off"
    }
    
    // MAKR - inits
    
    init() {}
    
    init(email: String, profilePic: String, userID: Int) {
        self.emailPrimary = email
        self.displayPic = profilePic
        self.vibrate = true
        self.ring = true

        self.displayPic = profilePic
        self.emailPrimary = email
        self.userID = userID
    }
}

extension Array where Element == Greet.Method {
    mutating func update(with greetingMethod: Greet.Method) {
        if contains(greetingMethod) {
            remove(greetingMethod: greetingMethod)
        } else {
            append(greetingMethod)
        }
    }
}
