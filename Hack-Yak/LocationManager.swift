//
//  LocationManager.swift
//  Hack-Yak
//
//  Created by Andrew Breckenridge on 9/13/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

import Foundation
import CoreLocation


class LocationManager: CLLocationManager {
    static let sharedInstance = LocationManager()
    
    static var currentLocation: CLLocation!
    
    override init() {
        super.init()
        self.delegate = self
        self.requestAlwaysAuthorization()
        
        requestLocation()
    }
    
    
}

extension LocationManager: CLLocationManagerDelegate {
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        LocationManager.currentLocation = locations.last!
    }
}