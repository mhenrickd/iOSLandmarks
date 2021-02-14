//
//  MapView.swift
//  Landmarks
//
//  Created by Matheus Henrick Dias on 14/02/21.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coodinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coodinate)
            }
    }
    
    private func setRegion(_ coodinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coodinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coodinate: CLLocationCoordinate2D(latitude:34.011_286, longitude:-116.166_868))
    }
}
