//
//  InterfaceController.swift
//  BusinessLocator_WatchApp WatchKit Extension
//
//  Created by Salma on 1/8/20.
//  Copyright © 2020 Salma. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    @IBOutlet weak var picker: WKInterfacePicker!
    
    var businesses: [(String, String)] = [
        ("Restaurants", "Place"),
        ("Hotels", "Place"),
        ("Attractions", "Place"),
        ("Hospitals", "Place")]
    
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        
        let pickerItems: [WKPickerItem] = businesses.map {
            let pickerItem = WKPickerItem()
            pickerItem.title = $0.0
            pickerItem.caption = $0.1
            return pickerItem
        }
        picker.setItems(pickerItems)
    }
    
    @IBAction func pickerSelectedItemChanged(_ value: Int) {
        NSLog("List Picker: \(businesses[value].0) selected")
    }
    
    override func pickerDidSettle(_ picker: WKInterfacePicker) {
        pushController(withName: "business", context: .none)
    }
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
}

