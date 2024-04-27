//
//  Response.swift
//  akin
//
//  Created by apple on 5/13/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

public typealias ContextID = String
public typealias PopularityScore = Int
public typealias ContextAction = (Context) -> Void

extension Question {
    
    public struct Response: Equatable, Codable {

        public static func == (lhs: Response, rhs: Response) -> Bool {
            lhs.id == rhs.id
        }
        
        public var text: String = ""
        public var rating: Int
        public var id: Int
        public var timeStamp: String
        public var creatorID: String
        public var contextID: Int
        public var answer_id: Int
        public var userID: Int
        public var displayPicURL: String
        public var responseID: Int
        public var questionText: String
        public var questionID: Int
        
        public var myChoice: [ContextID: Selections.MyTheir.Choice] = [:]
        public var theirChoices: [ContextID: Selections.MyTheir.Choice] = [:]
        public var popularity: [ContextID: PopularityScore] = [:]
        
        public init(
            text: String,
             rating: Int = 0,
             id: Int = NSUUID().hash,
             timeStamp: String = "",
             creatorID: String = "-1",
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
        
        public func has(_ myTheir: Selections.MyTheir, for contextID: String) -> Bool {
            switch myTheir {
            case .my:
                return myChoice[contextID] == .YES || myChoice[contextID] == .NO
            case .their:
                return theirChoices[contextID] == .YES || theirChoices[contextID] == .NO
            }
        }
        
        public mutating func set(_ myTheir: Selections.MyTheir, _  choice: Selections.MyTheir.Choice, for context: Context) {
            switch myTheir {
            case .my: myChoice[context.rawValue] = choice
            case .their: theirChoices[context.rawValue] = choice
            }
        }
        
        public func choice(for myTheir: Selections.MyTheir, _ context: Context) -> Selections.MyTheir.Choice? {
            switch myTheir {
            case .my: return myChoice[context.rawValue]
            case .their: return theirChoices[context.rawValue]
            }
        }
    }
}
