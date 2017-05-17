//
//  ViewController.swift
//  GoogleMap Demo
//
//  Created by Md. Kamrul Hasan on 5/16/17.
//  Copyright © 2017 MKHG Lab. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickMeTapped(_ sender: Any) {
        print("clickMeTapped")
    }

}

extension ViewController: GMSMapViewDelegate{
    
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
       print("didTapAt coordinate:", coordinate)
    }
    
    func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        print("didChange position:", position)
    }
    
}

