//
//  Question.swift
//  akin
//
//  Created by apple on 5/13/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import Foundation

typealias QuestionAction = ((Question) -> Void)

struct Question: Codable, Equatable, Hashable {
    
    // MARK - Types
    
    enum Category: String, CaseIterable {
        case not_answered, answered, all, created
    }
    
    static func == (lhs: Question, rhs: Question) -> Bool {
        lhs.id == rhs.id
    }
    
    // MARK - stored properties
    
    var requirementsFor: [Context: [Response.Selections.MyTheir]] = [:] // codable
    var text: String = ""
    var responses: [Response] = [] // Codable
    var id: Int?
    var type: String
    var creatorID: Int
    var importanceFor: [ContextID: Importance] = [:] // Codable
    var contextPopularity: [ContextID: PopularityScore] = [:] // Codable

    
    // MARK - computed properties
    
    var currentID: Int {
        id ?? -53
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    func responses(containing searchText: String) -> [Response] {
        responses.filter {  $0.text.lowercased().contains(searchText.lowercased()) }
    }
    
    // MARK - initializers


    init(
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
