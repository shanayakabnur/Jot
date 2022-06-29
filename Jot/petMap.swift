//
//  petMap.swift
//  Jot
//
//  Created by Shanaya Kabnur on 6/28/22.
//

import UIKit
import MapKit

class petMap: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
               createAnnotations(locations: annotationLocations)
           }
           // annotation locations
           let annotationLocations = [
            ["title": "Lakeside Animal Clinic", "subtitle": "Non-emergency and emergency vet. Open 7am - 6pm M-F; 8am - 12pm Sat.", "latitude": 29.737600, "longitude": -95.588080],
            
            ["title": "Rice Village Animal Hospital", "subtitle": "Non-emergency vet. Open 8am - 6pm M-F", "latitude":  29.717540, "longitude":  -95.413120],
            
            ["title": "Washington Heights Veterinary Clinic", "subtitle": "Non-emergency vet. Open 7:30am - 6pm M-F; 8am - 12pm Sat.", "latitude":  29.774750, "longitude":  -95.382240],
            
            ["title": "Midtown Veterinary Hospital", "subtitle": "Non-emergency vet. Open 7:30am - 6pm M-F; 8am - 12pm Sat.", "latitude":  29.738950, "longitude":  -95.397170],
            
            ["title": "Mission Bend Animal Clinic", "subtitle": "Non-emergency vet. Open 7:30am-6pm M-F; 8am-5pm Sat.", "latitude":  29.700640, "longitude":  -95.652687],
            
            ["title": "Briarcrest Veterinary Clinic", "subtitle": "Non-emergency vet. Open 7am-6pm M-F; 8:30am-12pm Sat.", "latitude":  29.7499695658148, "longitude":  -95.5721949055742],
            
            ["title": "Beechnut Animal Hospital", "subtitle": "Emergency vet. Open 7am-6pm M-F; 8am - 12pm Sat.", "latitude":  29.690945, "longitude": -95.535613],
            
            ["title": "VCA Ashford Animal Clinic", "subtitle": "Emergency vet. Open 7am-6pm M-F; 8am - 12pm Sat.", "latitude":  29.746214, "longitude":  -95.604795],
            
            ["title": "Oak Forest Veterinary Hospital", "subtitle": "Emergency vet. Open 7am-6pm M-F; 7:30am - 11:30pm Sat.", "latitude":  29.8173221134128, "longitude":  -95.4372826452034]
            
            
            
               
               
           ]

           //create annotation
           //[Dictionary<String, Any>] or [[String: Any]] works for argument type
           func createAnnotations(locations: [[String : Any]]) {
               for location in locations {
                   let annotations = MKPointAnnotation()
                   annotations.title = location["title"] as? String
                   annotations.subtitle = location ["subtitle"] as? String
                   annotations.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
                   mapView.addAnnotation(annotations)
               }
        
       
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
