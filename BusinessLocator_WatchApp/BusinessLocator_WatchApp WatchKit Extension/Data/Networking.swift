//
//  Networking.swift
//  BusinessLocator_WatchApp WatchKit Extension
//
//  Created by Salma on 1/8/20.
//  Copyright © 2020 Salma. All rights reserved.
//

import Foundation

class Networking: NSObject {

    func getData(url: URL, completed: @escaping (Data) -> Void) {

            var urlRequest = URLRequest(url: url)
                urlRequest.setValue(ApiKeys.yelpApiKey, forHTTPHeaderField: "Authorization")

            let task = URLSession.shared.dataTask(with: urlRequest) { (data, _, error) in

                if let error = error {
                    print("Error: \(error.localizedDescription)")
                    return
                }

                guard let data = data else { return }

                completed(data)
            }
            task.resume()
        }
    
}
