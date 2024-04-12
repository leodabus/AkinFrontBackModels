//
//  GreetUpdate.Message.swift
//  akin
//
//  Created by Scott Lydon on 8/11/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

extension Greet.Update {
    
    enum Message: Equatable, Codable {
        case cant(Int)
        case theySayTheyMet(String)
        case youAreCloseTo(String)
        
        static func == (lhs: Message, rhs: Message) -> Bool {
            switch (lhs, rhs) {
            case (let .cant(minutes1), let .cant(minutes2)):
                return minutes1 == minutes2
            case (let .theySayTheyMet(name1), let .theySayTheyMet(name2)):
                return name1 == name2
            case (let .youAreCloseTo(name1), let .youAreCloseTo(name2)):
                return name1 == name2
            default: return false
            }
        }
    }
}
