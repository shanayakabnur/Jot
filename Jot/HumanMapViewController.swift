//
//  HumanMapViewController.swift
//  Jot
//
//  Created by Shanaya Kabnur on 6/30/22.
//

import UIKit
import MapKit

class HumanMapViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var humanMapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createAnnotations(locations: annotationLocations)
        // Do any additional setup after loading the view.
    }
    
    // annotation locations
    let annotationLocations = [
     ["title": "SignatureCare Emergency Center", "subtitle": "Emergency room; open 24 hours.", "latitude": 29.744160, "longitude": -95.390920],
     
     ["title": "Montrose 24 Hour ER - Houston", "subtitle": "Emergency room; open 24 hours.", "latitude":  29.753690, "longitude":  -95.392570],
     
     ["title": "The Heights Emergency Room", "subtitle": "Emergency room; open 24 hours.", "latitude":  29.810370, "longitude":  -95.436510],
     
     ["title": "SignatureCare Emergency Center: ER", "subtitle": "Emergency room; open 24 hours.", "latitude":  29.785380, "longitude":  -95.484650],
     
     ["title": "Ascent Emergency Room", "subtitle": "Emergency room; open 24 hours.", "latitude":  29.705740, "longitude":  -95.385070],
     
     ["title": "Memorial Heights Emergency Center", "subtitle": "Emergency room; open 24 hours.", "latitude":  29.770451, "longitude":  -95.401573],
     
     ["title": "CareNow Urgent Care - Midtown", "subtitle": "Urgent care; open 8am - 8pm M-F; 8am - 7pm Sat; 8am - 5pm Sun.", "latitude":  29.745371, "longitude":  -95.376282],
     
     ["title": "AFC Urgent Care Washington Heights", "subtitle": "Urgent care; open 8am - 8pm M-F; 8am - 5pm Sat and Sun.", "latitude":  29.772610, "longitude":  -95.398890],
     
     ["title": "CareNow Urgent Care - Heights", "subtitle": "Urgent care; open 8am - 8pm M-F; 8am - 7pm Sat; 8am - 5pm Sun.", "latitude":  29.790980, "longitude":  -95.398160],
     
     ["title": "CareNow Urgent Care - River Oaks", "subtitle": "Urgent care; open 8am - 8pm M-F; 8am - 7pm Sat; 8am - 5pm Sun.", "latitude":  29.753080, "longitude":  -95.403992]
     
     
    
]
    
    //create annotation
    func createAnnotations(locations: [[String : Any]]) {
        for location in locations {
            let annotations = MKPointAnnotation()
            annotations.title = location["title"] as? String
            annotations.subtitle = location ["subtitle"] as? String
            annotations.coordinate = CLLocationCoordinate2D(latitude: location["latitude"] as! CLLocationDegrees, longitude: location["longitude"] as! CLLocationDegrees)
            humanMapView.addAnnotation(annotations)
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
