//
//  Greet.swift
//  akin
//
//  Created by Scott Lydon on 8/4/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

typealias CompatibilityContext = String
typealias CompatibilityScore = Double

public struct Greet: Codable {

    // MARK - properties
    
    var otherUser: Greet.User
    var greetID: String
    
    var method: Greet.Method = .wave
    var compatitibility: [CompatibilityContext: CompatibilityScore] = [:]
    var openers: [String] = []
    var meetingEvent: MeetingEvent? = nil
    var isMrPractice: Bool = false
    var thisSettings = Settings(status: .viewed)
    var percentThisTravelled: Double = 0
    var minutesAway: Int? = nil
    var travelMethod: TravelMethod? = nil
    var withinRangeOfEachOtherAndMeetPlace: Int? = nil
    var matchMakingMethodVersion: Double? = nil
    var estimatedTravelTimeInMinutes: Int? = nil
    
    var meetInXMinutes: Int? {
        guard let estimatedTravelTime = estimatedTravelTimeInMinutes else { return nil }
        return estimatedTravelTime + (agreedTime ?? 0)
    }
    
    var agreedTime: Int? {
        guard let otherUserSettings = otherUser.settings else { return nil }
        return thisSettings.agreedTimeProposals.filter({ !otherUserSettings.rejectedTimeProposals.contains($0) && otherUserSettings.agreedTimeProposals.contains($0) }).first
    }
    
    var rangeThreshold: Int = 0
    
    var isWaiting: Bool {
        let proposals = thisSettings.agreedTimeProposals
        guard let rejectedProposals = otherUser.settings?.rejectedTimeProposals else { return false }
        return !proposals.filter { !rejectedProposals.contains($0) }.isEmpty
    }
    
    var viewForProposal: ViewSetting {
        guard let newProposals = otherUser.settings?.agreedTimeProposals.filter({ !thisSettings.rejectedTimeProposals.contains($0) && $0 != 0 }),
            let firstNewProposal = newProposals.first else { return .start }
        return .otherAskedIfCanMeetLater(firstNewProposal)
    }
    
    var withinRange: Bool {
        if let withinRange = withinRangeOfEachOtherAndMeetPlace {
            return withinRange < rangeThreshold
        }
        return false
    }
    
    var otherUserIsEligibleToMeet: Bool {
        if let otherStatus = otherUser.settings?.status {
            return otherStatus != .rejectedOther
                && otherStatus != .exceededRange
        } else {
            return false
        }
    }
    
    // MARK - updates
    
    mutating func update(with new: Greet) -> Greet.Update? {
        let rejectedTime = rejectedProposal(from: new)
        meetingEvent = new.meetingEvent
        otherUser = new.otherUser
        thisSettings.updateSettings(with: otherUser.settings)
        withinRangeOfEachOtherAndMeetPlace = new.withinRangeOfEachOtherAndMeetPlace
        
        if thisSettings.status == .enroute && otherUser.settings?.status == .viewed {
            otherUser.settings?.status = .enroute
        }
        
        return Greet.Update(
            this: thisSettings.status,
            otherUser: otherUser.settings?.status,
            withinRange: withinRange,
            rejectedProposal: rejectedTime,
            viewForProposal: viewForProposal,
            otherUserName: otherUser.name
        )
    }
    
    // Reject
    
    func rejectedProposal(from new: Greet) -> Int? {
        if let oldRejectedTimeProposals = otherUser.settings?.rejectedTimeProposals,
            let newRejectedTimeProposals =  new.otherUser.settings?.rejectedTimeProposals {
            let differentProposals = newRejectedTimeProposals.filter { !oldRejectedTimeProposals.contains($0) }
            if let first = differentProposals.first {
                return first
            }
        }
        return nil
    }
    
    mutating func mrPracticeDidReject() -> Bool? {
        if !isMrPractice {return nil}
        return arc4random_uniform(4) == 0
    }
    
    init(otherUser: Greet.User, greetID: String) {
        self.otherUser = otherUser
        self.greetID = greetID
    }
}
