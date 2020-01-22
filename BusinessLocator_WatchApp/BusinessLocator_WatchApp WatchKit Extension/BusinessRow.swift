//
//  BusinessRow.swift
//  BusinessLocator_WatchApp WatchKit Extension
//
//  Created by Salma on 1/8/20.
//  Copyright © 2020 Salma. All rights reserved.
//

import WatchKit

class BusinessRow: NSObject {
    
    var businessData = [Business]()
    
    @IBOutlet weak var businessName: WKInterfaceLabel!
    
    func setBusiness() {
        for business in businessData {
            print(businessData)
        }
    }
}
