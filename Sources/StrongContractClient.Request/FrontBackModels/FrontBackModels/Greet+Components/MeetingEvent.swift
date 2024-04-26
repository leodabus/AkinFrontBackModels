//
//  GreetModels.swift
//  akin
//
//  Created by Scott Lydon on 3/25/19.
//  Copyright © 2019 ElevatedUnderdogs. All rights reserved.
//

import CoreLocation

extension Greet {
    
    public struct MeetingEvent: Codable {

        public var meetInXMinutes: Int = 0
        public var halfwayPoint: CLLocationCoordinate2D
        public var business: Yelp.Business? = nil

        public init(halfway: CLLocationCoordinate2D) {
            self.halfwayPoint = halfway
        }
    }
}
