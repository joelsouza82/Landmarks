//
//  MapaView.swift
//  Landmarks
//
//  Created by Joel de Almeida Souza on 14/04/23.
//

import SwiftUI
import MapKit

struct MapaView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }
    
    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapaView_Previews: PreviewProvider {
    static var previews: some View {
        MapaView(coordinate: CLLocationCoordinate2D(
            latitude: 34.011_286,
            longitude: -116.166_868
            )
        )
    }
}
