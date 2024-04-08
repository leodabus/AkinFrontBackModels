//
//  File.swift
//  
//
//  Created by Scott Lydon on 4/2/24.
//

import Foundation

public extension Date {
    var apiString: String {
        let df = DateFormatter()
        df.dateFormat = "YYYY-MM-dd HH:mm:ss"
        df.timeZone = TimeZone(identifier: "GMT")
        return df.string(from: self)
    }
}
