//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/3/24.
//

import Foundation

public extension Array {
    var data: Data {
        withUnsafeBufferPointer { Data(buffer: $0) }
    }
}

public extension Array where Element == Question.Response {

    func hasSelection(
        context: Context/* = UserDefaults.questionContext*/,
        for myTheir: Question.Response.Selections.MyTheir
    ) -> Bool {
        contains { $0.has(myTheir, for: context.rawValue) }
    }
}

public extension Array where Element == Greet.Method  {
    mutating func remove(greetingMethod: Greet.Method) {
        removeAll { $0 == greetingMethod }
    }
}

public extension Array where Element == Greet.User {
    func index(of id: Int) -> Int? {
        firstIndex { Int($0.id) == id }
    }
}
