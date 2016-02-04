//
//  MapViewController.swift
//  Flicks
//
//  Created by Muin Momin on 2/1/16.
//  Copyright © 2016 Muin. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.map.delegate = self
        
        // I PLAN ON USING AN API IN THE FUTURE
        // THESE POINTS ARE JUST PLACEHOLDERS FOR NOW
        let locations = randomLocationsWithCount(20)
        for location in locations {
            placePin(location)
        }
    }

    func randomLocationsWithCount(count:Int) -> [CLLocationCoordinate2D] {
        var array:[CLLocationCoordinate2D] = []
        for _ in 0...count {
            let lat = Double(randomBetweenNumbers(33.513, secondNum: 48.66))
            let long = Double(-1*randomBetweenNumbers(82.7016, secondNum: 116.468))
            
            let location = CLLocationCoordinate2D(latitude: lat, longitude: long)
            array.append(location)
        }
        return array
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func placePin(coor: CLLocationCoordinate2D) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = coor
        annotation.title = "(\(annotation.coordinate.latitude),\(annotation.coordinate.longitude))"
        map.addAnnotation(annotation)
    }
    
    
    func randomBetweenNumbers(firstNum: CGFloat, secondNum: CGFloat) -> CGFloat{
        return CGFloat(arc4random()) / CGFloat(UINT32_MAX) * abs(firstNum - secondNum) + min(firstNum, secondNum)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
