//
//  BusinessTable.swift
//  BusinessLocator_WatchApp WatchKit Extension
//
//  Created by Salma on 1/8/20.
//  Copyright © 2020 Salma. All rights reserved.
//

import WatchKit

class BusinessTable: WKInterfaceController {
    
    var businessData = [Business]()
    var businesses: Business?
    
    @IBOutlet weak var businessTable: WKInterfaceTable!

    override func awake(withContext context: Any?) {
      super.awake(withContext: context)

        loadBusinesses()
        BusinessList()
    }
    
    func loadBusinesses() {
        
         guard let url = URL(string: "https://api.yelp.com/v3/businesses/search?term=restaurants&location=atlanta") else { return }
         var request = URLRequest(url: url)
         request.addValue(ApiKeys.yelpApiKey, forHTTPHeaderField: "Authorization")
         
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in

            guard let data = data else { return }

            print ("Data: \(String(bytes: data, encoding: .utf8)!)")

            let yelpParser = YelpParser()
            yelpParser.parse(data: data) { (yelpData) in
                
            self.businessData = yelpData.businesses
            }
        }
        task.resume()
    }
    
    func BusinessList() {
        businessTable.setNumberOfRows(businessData.count, withRowType: "tableRow")
    }
    
}
