//
//  Response.swift
//  akin
//
//  Created by apple on 5/13/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

typealias ContextID = String
typealias PopularityScore = Int
typealias ContextAction = (Context) -> Void

public extension Question {
    
    struct Response: Equatable, Codable {

        public static func == (lhs: Response, rhs: Response) -> Bool {
            lhs.id == rhs.id
        }
        
        var text: String = ""
        var rating: Int
        var id: Int
        var timeStamp: String
        var creatorID: Int
        var contextID: Int
        var answer_id: Int
        var userID: Int
        var displayPicURL: String
        var responseID: Int
        var questionText: String
        var questionID: Int
        
        var myChoice: [ContextID: Selections.MyTheir.Choice] = [:]
        var theirChoices: [ContextID: Selections.MyTheir.Choice] = [:]
        var popularity: [ContextID: PopularityScore] = [:]
        
        init(
            text: String,
             rating: Int = 0,
             id: Int = NSUUID().hash,
             timeStamp: String = "",
             creatorID: Int = -1,
             contextID: Int = -1,
             answer_id: Int = -1,
             userID: Int = -1,
             displayPIcURL: String = "",
             responseID: Int = -1,
             questionText: String = "",
             questionID: Int = -1
        ) {
            self.text = text
            self.rating = rating
            self.id = id
            self.timeStamp = timeStamp
            self.creatorID = creatorID
            self.contextID = contextID
            self.answer_id = answer_id
            self.userID = userID
            self.displayPicURL = displayPIcURL
            self.responseID = responseID
            self.questionText = questionText
            self.questionID = questionID
        }
        
        func has(_ myTheir: Selections.MyTheir, for contextID: String) -> Bool {
            switch myTheir {
            case .my:
                return myChoice[contextID] == .YES || myChoice[contextID] == .NO
            case .their:
                return theirChoices[contextID] == .YES || theirChoices[contextID] == .NO
            }
        }
        
        mutating func set(_ myTheir: Selections.MyTheir, _  choice: Selections.MyTheir.Choice, for context: Context) {
            switch myTheir {
            case .my: myChoice[context.rawValue] = choice
            case .their: theirChoices[context.rawValue] = choice
            }
        }
        
        func choice(for myTheir: Selections.MyTheir, _ context: Context) -> Selections.MyTheir.Choice? {
            switch myTheir {
            case .my: return myChoice[context.rawValue]
            case .their: return theirChoices[context.rawValue]
            }
        }
    }
}
