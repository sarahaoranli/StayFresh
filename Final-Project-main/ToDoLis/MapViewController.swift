import UIKit
import MapKit
class MapViewController: UIViewController {
  
    
    @IBOutlet weak var MKMap: MKMapView!
    
    override func viewDidLoad() {
    
    super.viewDidLoad()
        
    let initialLocation = CLLocation(latitude: 42.36447, longitude: -83.07192)
    MKMap.centerToLocation(initialLocation)
    
    let region = MKCoordinateRegion(
     center: initialLocation.coordinate,
     latitudinalMeters: 10000,
     longitudinalMeters: 60000)
    MKMap.setRegion(region, animated: true)
   
        // MKMap.setCameraBoundary(
     // MKMapView.CameraBoundary(coordinateRegion: region),
    //  animated: true)
        
    let zoomRange = MKMapView.CameraZoomRange(maxCenterCoordinateDistance: 25000)
    MKMap.setCameraZoomRange(zoomRange, animated: true)
        
    /* // Get the zoom level
    MKMap.zoomLevel
    // Set the zoom level
    MKMap.zoomLevel = 16.0
    // Set the zoom level with an animation
    MKMap.setZoomLevel(16.0, animated: true)*/
        
    let place1 = MKPointAnnotation()
    place1.title = "Gleaners Community Food Bank of Southern Michigan"
    place1.subtitle = "Volunteering & Donations"
    place1.coordinate = CLLocationCoordinate2D(latitude: 42.35461, longitude: -83.01398)
    MKMap.addAnnotation(place1)
   
    let place2 = MKPointAnnotation()
    place2.title = "Michigan Interfaith Trust Fund - Food Distribution Center"
    place2.subtitle = "Food Bank"
    place2.coordinate = CLLocationCoordinate2D(latitude: 42.34254, longitude: -83.07119)
    MKMap.addAnnotation(place2)
    
    let place3 = MKPointAnnotation()
    place3.title = "The Mi Neighborhood Food Movers - Food Distribution Center"
    place3.subtitle = "Food Bank"
    place3.coordinate = CLLocationCoordinate2D(latitude: 42.36018, longitude: -83.07293)
    MKMap.addAnnotation(place3)
    
    let place4 = MKPointAnnotation()
    place4.title = "Northend Church Of God In Christ - Food Distribution Center"
    place4.subtitle = "Food Bank"
    place4.coordinate = CLLocationCoordinate2D(latitude: 42.37407, longitude: -83.06933)
    MKMap.addAnnotation(place4)
  }
}

private extension MKMapView {
 func centerToLocation(
  _ location: CLLocation,
  regionRadius: CLLocationDistance = 1000
 ) {
  let coordinateRegion = MKCoordinateRegion(
   center: location.coordinate,
   latitudinalMeters: regionRadius,
   longitudinalMeters: regionRadius)
  setRegion(coordinateRegion, animated: true)
 }
}
