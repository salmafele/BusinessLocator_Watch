//
//  YelpData.swift
//  BusinessLocator_WatchApp WatchKit Extension
//
//  Created by Salma on 1/8/20.
//  Copyright © 2020 Salma. All rights reserved.
//

import UIKit
import Foundation

struct YelpData: Codable {
    var businesses: [Business]
    var region: Region?
}

struct Business: Codable {
    var name: String? // works
//    var price: String? // wokrs
//    var categories: [Categories]?
//    var coordinates: Coordinates?
//    var image_url: String?
//    var is_closed: Bool?
//    var review_count: Int?
//    var rating: Double?
//    var location: [Location]?
//    var distance: Double?
//    var display_phone: String? // works .. not showing in the UI
//    var phone: String?
}

struct Coordinates: Codable {
    var latitude: Double?
    var longitude: Double?
}

struct Region: Codable {
    var center: Coordinates?
}

struct Categories: Codable {
    var title: String?
}

struct Location: Codable {
    var address1: String?
    var address2: String?
    var address3: String?
    var city: String?
    var zip_code: String?
    var state: String?
    var display_address: [DisplayAddress]?
}

struct DisplayAddress: Codable {
    
}
