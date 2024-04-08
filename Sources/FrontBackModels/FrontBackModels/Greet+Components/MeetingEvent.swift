//
//  GreetModels.swift
//  akin
//
//  Created by Scott Lydon on 3/25/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import CoreLocation

public extension Greet {
    
    struct MeetingEvent: Codable {

        var meetInXMinutes: Int = 0
        var halfwayPoint: CLLocationCoordinate2D
        var business: Yelp.Business? = nil

        init(halfway: CLLocationCoordinate2D) {
            self.halfwayPoint = halfway
        }
    }
}
