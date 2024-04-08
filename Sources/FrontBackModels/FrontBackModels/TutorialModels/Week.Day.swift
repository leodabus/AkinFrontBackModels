//
//  Week.Day.swift
//  akin
//
//  Created by Scott Lydon on 4/2/24.
//  Copyright © 2024 ElevatedUnderdogs. All rights reserved.
//

import Foundation

public extension Week {

    struct Day: Codable {

        public enum Name: String, Codable {
            case Sunday, Monday, Tuesday, Wednesday, Thursday, Friday, Saturday
        }

        var name: Name
        var timeBlocks: [Hour]

        init(name: Name, timeBlocks: [Hour] = []) {
            self.name = name
            self.timeBlocks = timeBlocks
        }
    }
}
