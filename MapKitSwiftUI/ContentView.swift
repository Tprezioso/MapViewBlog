//
//  ContentView.swift
//  MapKitSwiftUI
//
//  Created by Thomas Prezioso on 3/5/20.
//  Copyright © 2020 Thomas Prezioso. All rights reserved.
//

import SwiftUI

struct ContentView: View {
       @State var pins: [Pin] = [
      Pin(title: "Ortega Park", coordinate: .init(latitude: 37.342226, longitude: -122.025617)),
    ]

    var body: some View {
        MapView(pins: $pins)
            .edgesIgnoringSafeArea(.all)
    }
}
