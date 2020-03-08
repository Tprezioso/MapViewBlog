//
//  MapView.swift
//  MapKitSwiftUI
//
//  Created by Thomas Prezioso on 3/5/20.
//  Copyright © 2020 Thomas Prezioso. All rights reserved.
//

import MapKit
import SwiftUI

final class Pin: NSObject, MKAnnotation {
  let title: String?
  let coordinate: CLLocationCoordinate2D
  
  init(title: String?, coordinate: CLLocationCoordinate2D) {
    self.title = title
    self.coordinate = coordinate
  }

}

struct MapView: UIViewRepresentable {
    
    var locationManager = CLLocationManager()
    
    func setupManager() {
      locationManager.desiredAccuracy = kCLLocationAccuracyBest
      locationManager.requestWhenInUseAuthorization()
      locationManager.requestAlwaysAuthorization()
    }
    
    @Binding var pins: [Pin]

    func makeUIView(context: UIViewRepresentableContext<MapView>) -> MKMapView {
        setupManager()
        let mapView = MKMapView(frame: UIScreen.main.bounds)
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow

        return mapView
    }

    func updateUIView(_ view: MKMapView, context: UIViewRepresentableContext<MapView>) {
        view.addAnnotations(pins)
    }

   
}
