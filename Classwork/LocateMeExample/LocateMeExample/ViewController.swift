//
//  ViewController.swift
//  LocateMeExample
//
//  Created by Chase Lewis on 8/5/15.
//  Copyright (c) 2015 Chase Lewis. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
    }
    
    @IBAction func findMeAction(sender: UIBarButtonItem) {
        // Request permission when it's the first time
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager!, didUpdateToLocation newLocation: CLLocation!, fromLocation oldLocation: CLLocation!) {
        println("new location lat: \(newLocation.coordinate.latitude), long: \(newLocation.coordinate.longitude)") // Accesses coordinates
        
        centerMapOnUserLocationForMapView(mapView)
        
        CLGeocoder().reverseGeocodeLocation(newLocation, completionHandler: { (results, error) -> Void in // Turns the coordinates into street addresses
            
            if error != nil {
                println("error")
                return
            }
            
            if results.count > 0 {
                println("Recieved placemarks")
                
                let place = results[0] as! CLPlacemark // Takes the first result of your location
                println("We found you at \(place.name) \(place.locality)")
            }
        })
        
        locationManager.stopUpdatingLocation()
    }
    
    // The below function centers the map on the user's location
    
    func centerMapOnUserLocationForMapView(mapView: MKMapView) {
        if let coordinate = mapView.userLocation.location?.coordinate {
            // In here user location is allowed and available
            let region = MKCoordinateRegionMakeWithDistance(coordinate, 1000, 1000) // The smaller the number, the more zoomed in it will be
            mapView.setRegion(region, animated: true)
        }
    }
    
}

