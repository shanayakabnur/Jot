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
        self.mapView.delegate = self

        // Do any additional setup after loading the view.
        
        // set an initial location
        let sourceLocation = CLLocationCoordinate2D(latitude: 29.737600, longitude: -95.588080)
        //add map pin
        let sourcePlacemark = MKPlacemark(coordinate: sourceLocation, addressDictionary: nil )
        //label the map pin
        let sourceAnnotation = MKPointAnnotation()
                sourceAnnotation.title = "Lakeside Animal Clinic"
        sourceAnnotation.subtitle = "Emergency and non-emergency animal clinic. Open 7am - 6pm M-F; 8am - 12pm Sat; closed Sundays."
        
        if let location = sourcePlacemark.location{
                    sourceAnnotation.coordinate = location.coordinate
            
            
                }
        
        // show region of choice
                self.mapView.showAnnotations([sourceAnnotation] , animated: true)
        
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
