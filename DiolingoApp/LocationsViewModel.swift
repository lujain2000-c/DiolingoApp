//
//  LocationsViewModel.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 30/10/1444 AH.
//

//import Foundation
//import SwiftUI
//import  MapKit
//
//class LocationsViewModel: ObservableObject{
//    
//    @Published var locations: [LocationView]
//    
//    @Published var mapLocation: LocationView{
//        didSet {
//            updateMapRegion(location: mapLocation)
//        }
//    }
//    
//    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
//    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
//    
//    init() {
//        let locations = LocationsDataService.locations
//        self.locations = locations
//        self.mapLocation = locations.first!
//        
//        self.updateMapRegion(location: locations.first!)
//    }
//    
//    private func updateMapRegion(location: Location){
//        withAnimation(.easeInOut) {
//            mapRegion = MKCoordinateRegion(
//                center: location.coordinate,span: mapSpan)
//        }
//    }
//}

