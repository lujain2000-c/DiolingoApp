//
//  LocationView.swift
//  DiolingoApp
//
//  Created by لجين إبراهيم الكنهل on 30/10/1444 AH.
//
import  MapKit
import SwiftUI

struct Location: Identifiable {
    let id = UUID()
    let name : String
    let coordinate: CLLocationCoordinate2D
}

struct LocationView: View {
    @State private var mapRegion: MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 24.7139, longitude: 46.674 ), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    let locations = [
        Location(name: "Buckingham Palace", coordinate: CLLocationCoordinate2D(
            latitude: 51.501, longitude: -0.141)),
        Location(name: "Tower of London ", coordinate: CLLocationCoordinate2D(
            latitude: 51.508, longitude: -0.074))]
    var body: some View {
//        ZStack{
//            Map(coordinateRegion: $mapRegion)
//                .ignoresSafeArea()
//        }
        NavigationView{
            Map(coordinateRegion: $mapRegion, annotationItems: locations){
                location in MapAnnotation(coordinate: location.coordinate){
                    NavigationLink{
                        Text(location.name)
                    }label: {
                        Circle()
                            .stroke(.red, lineWidth:3)
                            .frame(width:44, height: 44)
                    }
                }
               
            }
            .navigationTitle("KSU")
        }
        ZStack{
            Color(.white)
                .cornerRadius(10)
                .frame(width: 350, height: 50)
                .shadow(radius: 5)
                // Button("NEXT"){}
            NavigationLink("NEXT", destination: HiView() )
                .foregroundColor(Color("MyGreen"))
                .font(.headline)
                .bold()
        }
        
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationView()
    }
}
