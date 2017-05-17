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

    @IBOutlet weak var messageLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.messageLabel.frame = CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.messageLabel.frame.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func clickMeTapped(_ sender: Any) {
        print("clickMeTapped")
        
        animateMessageLabel()
    }
    
    func animateMessageLabel() {
        if(messageLabel.frame.minY == 0) {
            print("messageLabel.frame.minY == self.view.frame.minY")
            
            UIView.animate(withDuration: 0.5, animations: {
                
                self.messageLabel.frame = CGRect(x: self.view.frame.minX, y: self.view.frame.maxY-self.messageLabel.frame.height, width: self.messageLabel.frame.width, height: self.messageLabel.frame.height)
                
            })
        }else{
            print("messageLabel.frame.minY != self.view.frame.minY")
            UIView.animate(withDuration: 0.5, animations: {
                
                self.messageLabel.frame = CGRect(x: self.view.frame.minX, y: self.view.frame.minY, width: self.messageLabel.frame.width, height: self.messageLabel.frame.height)
            })
        }
    }

}

extension ViewController: GMSMapViewDelegate{
    
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
       print("didTapAt coordinate:", coordinate)
        animateMessageLabel()
    }
    
    func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        print("didChange position:", position)
    }
    
}

