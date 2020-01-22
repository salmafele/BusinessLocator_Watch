//
//  YelpParser.swift
//  BusinessLocator_WatchApp WatchKit Extension
//
//  Created by Salma on 1/8/20.
//  Copyright © 2020 Salma. All rights reserved.
//

import UIKit
import Foundation

class YelpParser {
    
    func parse(data: Data, completed: (YelpData) -> Void) {
        
        // create decoder
        let jsonDecoder = JSONDecoder()
        
        do {
            // decode json into structs
            let yelpData = try jsonDecoder.decode(YelpData.self, from: data)
            
            completed(yelpData)
            
        } catch {
            print("error: \(error.localizedDescription)")
        }
        
    }
    
}
