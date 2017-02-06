//
//  DetailViewController.swift
//  SearchinNavigation
//
//  Created by Master on 06/02/17.
//  Copyright © 2017 Master. All rights reserved.
//

import UIKit
import MapKit

class DetailViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var lbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.isHidden = true
        lbl.isHidden = false
        
        UIDevice.current.beginGeneratingDeviceOrientationNotifications()
        
        NotificationCenter.default.addObserver(self, selector: #selector(deviceDidRotate), name: NSNotification.Name(rawValue:"UIDeviceOrientationDidChangeNotification"), object: nil)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func deviceDidRotate(){
        let orientation = UIDevice.current.orientation
       
        switch orientation {
        case .landscapeLeft, .landscapeRight:
            mapView.isHidden = false
            lbl.isHidden = true
        default:
            mapView.isHidden = true
            lbl.isHidden = false
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        NotificationCenter.default.removeObserver(self)
    }
}
