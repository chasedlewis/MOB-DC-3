import Foundation
import MapKit

func centerMapOnUserLocationForMapView(mapView: MKMapView) {
    if let coordinate = mapView.userLocation.location?.coordinate {
        // In here user location is allowed and available
        let region = MKCoordinateRegionMakeWithDistance(coordinate, 10000, 10000) // The smaller the number, the more zoomed in it will be
        mapView.setRegion(region, animated: true)
    }
}
