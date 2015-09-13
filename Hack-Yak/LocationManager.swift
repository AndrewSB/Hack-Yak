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
    
    var currentLocation: CLLocation!
    
    override init() {
        
        super.init()
        
        self.delegate = self
        self.requestWhenInUseAuthorization()
        
        requestLocation()
    }
    
    
}

extension LocationManager: CLLocationManagerDelegate {
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.currentLocation = locations.last!
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        self.stopUpdatingLocation()
    }
    
}