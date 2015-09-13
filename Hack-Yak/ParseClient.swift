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
    case Yaks = "Yaks"
}

class ParseClient {
    static let sharedInstance = ParseClient()
    
    var currentLocation: CLLocation!
    
    func createYak(yakContent: String) {
        let yakParseObject = PFObject(className: ParseClass.Yaks.rawValue)
        
        yakParseObject["message"] = yakContent
        yakParseObject["location"] = LocationManager.currentLocation
        yakParseObject["upvotes"] = 0
        
        yakParseObject.saveInBackground()
    }
}