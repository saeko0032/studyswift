//
//  TimelineParser.swift
//  DotsSwiftTwitterClient
//
//  Created by saekof on 2017-03-22.
//  Copyright © 2017 CICCC. All rights reserved.
//

import Foundation

struct TimelineParser {
    func parse(data: Data) -> [Tweet] {
        let serializedData = try! JSONSerialization.jsonObject(with: data, options: .allowFragments)
        let json = serializedData as! [Any]
        
        let timeline: [Tweet] = json.flatMap {
            Tweet(json: $0)
        }
        return timeline
    }
}
