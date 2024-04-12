//
//  Choice.swift
//  akin
//
//  Created by Scott Lydon on 8/5/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

extension Question.Response.Selections.MyTheir {

    enum Choice: String, CaseIterable, Codable {
        case YES
        case NO
        case empty = " "
        case NEUTRAL

        var weightMultiplier: Int {
            switch self {
            case .YES: return 1
            case .empty: return 0
            case .NEUTRAL: return 0
            case .NO: return -1
            }
        }
    }
}
