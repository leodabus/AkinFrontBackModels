//
//  MidGreetSettings.swift
//  akin
//
//  Created by Scott Lydon on 8/4/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

extension Greet {
    
    public struct Settings: Codable {
        public var rejectedTimeProposals: [Int] = []
        public var agreedTimeProposals: [Int] = []
        public var status: Greet.Update.Status

        mutating func updateSettings(with otherUserSettings: Settings?) {
            guard let otherUserSettings = otherUserSettings else { return }
            
            let commonProposedTimes = agreedTimeProposals.filter {
                otherUserSettings.agreedTimeProposals.contains($0)
            }
            let validProposedTimes = commonProposedTimes.filter {
                !rejectedTimeProposals.contains($0) && !otherUserSettings.rejectedTimeProposals.contains($0)
            }
            
            if !validProposedTimes.isEmpty {
                status = .enroute
            }
        }
        
        init(status: Greet.Update.Status) {
            self.status = status
        }
    }
}
