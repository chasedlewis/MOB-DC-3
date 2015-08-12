//
//  ViewController.swift
//  GeoFence
//
//  Created by LOANER on 8/2/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit
import MapKit


class ViewController: UIViewController, AddFenceDelegate, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    let locationManager = CLLocationManager()
    let fenceStore = FenceStore.sharedStore
    var fences = [Fence]() {
        didSet {
            self.navigationItem.title = "Geo fences (\(fences.count))"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView.delegate = self
        
        // Get fences from core data
        fences = fenceStore.getAllFences()
        
        // For existing fences
        for fence in fences {
            mapView.addAnnotation(fence)
            addRadiusOverlayForFence(fence)
        }
    }

    @IBAction func locateMe(sender: UIBarButtonItem) {
        centerMapOnUserLocationForMapView(mapView)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showAdd" {
            let destinationVC = segue.destinationViewController as! UINavigationController
            let addVC = destinationVC.topViewController as! AddViewController
            
            addVC.delegate = self
        }
    }
    
    func addFenceWithCoordinate(coordinate: CLLocationCoordinate2D,
        radius: Double, note: String, uuid: String, eventType: EventType) {
            var newFence = fenceStore.addFence(coordinate, uuid: uuid, radius: radius,
                fireMoment: eventType, note: note)
            
            // Add the pin to the map
            mapView.addAnnotation(newFence)
            
            // Append to array
            fences.append(newFence)
            
            // Add radius
            addRadiusOverlayForFence(newFence)
            
            // Start Geo Fence Monitoring
            startMonitoringFence(newFence)
    }

    func addRadiusOverlayForFence(fence: Fence) {
        mapView.addOverlay(MKCircle(centerCoordinate: fence.coordinate, radius: fence.radius))
    }
    
    // Mark: - MapView Delegate Methods
    func mapView(mapView: MKMapView!, rendererForOverlay overlay: MKOverlay!) -> MKOverlayRenderer! {
        if overlay is MKCircle {
            var circleRenderer = MKCircleRenderer(overlay: overlay)
            circleRenderer.lineWidth = 1.0
            circleRenderer.strokeColor = UIColor.purpleColor()
            circleRenderer.fillColor = UIColor.purpleColor().colorWithAlphaComponent(0.4)
            return circleRenderer
        }
        return nil
    }
    
    // Creates the information bubble for the pin
    func mapView(mapView: MKMapView!, viewForAnnotation annotation: MKAnnotation!) -> MKAnnotationView! {
        
        if annotation is Fence { // Shows description bubbles only for fences but this can be changed
            var annotationView = mapView.dequeueReusableAnnotationViewWithIdentifier("fenceAnnotation")

            
            if annotationView == nil {
                annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "fenceAnnotation")
                
                let removeButton = UIButton.buttonWithType(.Custom) as! UIButton
                removeButton.frame = CGRectMake(0, 0, 23, 23)
                removeButton.setImage(UIImage(named: "DeleteGeotification"), forState: .Normal)
                
                annotationView.leftCalloutAccessoryView = removeButton
                
                annotationView.canShowCallout = true
            } else {
                annotationView.annotation = annotation
        }
            
        return annotationView
    }
        return nil
    }
    
    func startMonitoringFence(fence: Fence) {
        if !CLLocationManager.isMonitoringAvailableForClass(CLCircularRegion) {
            return
        }
        
        if CLLocationManager.authorizationStatus() != .AuthorizedAlways {
            return
        }
        
        locationManager.startMonitoringForRegion(regionWithFence(fence))
    }
    
    func regionWithFence(fence: Fence) -> CLCircularRegion {
        let region = CLCircularRegion(circularRegionWithCenter: fence.coordinate,
            radius: fence.radius, identifier: fence.uuid)
        
        region.notifyOnEntry = (fence.eventType == .entry)
        region.notifyOnExit = !region.notifyOnEntry
        
        return region
    }
    
}

