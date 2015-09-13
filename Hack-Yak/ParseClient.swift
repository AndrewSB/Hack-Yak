//
//  ParseClient.swift
//  Hack-Yak
//
//  Created by Andrew Breckenridge on 9/13/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

import Foundation

import Parse
import Bolts

enum ParseClass: String {
    case Yaks = "yaks"
}

class ParseClient {
    
    static let sharedInstance = ParseClient()
    
    var currentLocation: CLLocation!
    
    func createYak(yakContent: String) {
        
        let yakParseObject = PFObject(className: "yaks")
        
        let geoPoint = PFGeoPoint(location: LocationManager.sharedInstance.currentLocation ?? CLLocation())
        
        yakParseObject.setObject(yakContent, forKey: "message")
        yakParseObject.setObject(0, forKey: "upvotes")
        yakParseObject.setObject(geoPoint, forKey: "location")
        
        yakParseObject.saveInBackground()

    }
}