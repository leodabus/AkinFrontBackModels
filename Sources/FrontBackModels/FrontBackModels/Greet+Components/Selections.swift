//
//  Selections.swift
//  akin
//
//  Created by Scott Lydon on 8/5/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

public extension Question.Response {
    
    struct Selections: Codable {
        var my: MyTheir.Choice, their: MyTheir.Choice
        
        init(my: MyTheir.Choice = .empty, their: MyTheir.Choice = .empty) {
            self.my = my
            self.their = their
        }
    }
}
