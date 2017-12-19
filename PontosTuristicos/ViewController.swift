//
//  ViewController.swift
//  PontosTuristicos
//
//  Created by Usuário Convidado on 19/12/17.
//  Copyright © 2017 br.com.camila.fiap. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var MapView: MKMapView!
    var pontoTuristico: PontosTuristicos!
    
     var lastTitle: String!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lastTitle = self.navigationController?.navigationBar.topItem?.title
        self.navigationController?.navigationBar.topItem?.title = ""
        
        MapView.mapType = MKMapType.standard
        
        let location = CLLocationCoordinate2D(latitude: pontoTuristico.latitude, longitude: pontoTuristico.longitude)
        let span = MKCoordinateSpanMake(0.05, 0.05)
        let region = MKCoordinateRegion(center: location, span: span)
        MapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        annotation.title = pontoTuristico.name
        annotation.subtitle = pontoTuristico.address
        MapView.addAnnotation(annotation)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

