//
//  Question.swift
//  akin
//
//  Created by apple on 5/13/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

public typealias QuestionAction = ((Question) -> Void)

public struct Question: Codable, Equatable, Hashable {

    // MARK - Types
    
    public enum Category: String, CaseIterable {
        case not_answered, answered, all, created
    }
    
    public static func == (lhs: Question, rhs: Question) -> Bool {
        lhs.id == rhs.id
    }
    
    // MARK - stored properties
    
    public var requirementsFor: [Context: [Response.Selections.MyTheir]] = [:] // codable
    public var text: String = ""
    public var responses: [Response] = [] // Codable
    public var id: Int?
    public var type: String
    public var creatorID: Int
    public var importanceFor: [ContextID: Importance] = [:] // Codable
    public var contextPopularity: [ContextID: PopularityScore] = [:] // Codable

    
    // MARK - computed properties
    
    public var currentID: Int {
        id ?? -53
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public func responses(containing searchText: String) -> [Response] {
        responses.filter {  $0.text.lowercased().contains(searchText.lowercased()) }
    }
    
    // MARK - initializers


    public init(
        text: String,
        responses: [Response] = [],
        id: Int? = nil,
        type: String = "",
        creatorID: Int,
        thisUser: Bool = false
    ) {
        self.text = text
        self.responses = responses
        self.type = type
        self.creatorID = creatorID
        self.id = id ?? NSUUID().hash
    }
}
