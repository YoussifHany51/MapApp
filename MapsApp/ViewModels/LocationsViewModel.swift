//
//  LocationsViewModel.swift
//  MapsApp
//
//  Created by Youssif Hany on 17/02/2022.
//

import Foundation
import MapKit
import SwiftUI

class LocationViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    @Published var mapLocation : Location {
        didSet{
            updateMapRegion(location: mapLocation)
        }
    }
    
    @Published var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta:0.1)
    
    
    @Published var showLocationsList: Bool = false
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
        self.mapLocation = locations.first!
        self.updateMapRegion(location: locations.first!)
    }
    
    private func updateMapRegion(location:Location){
        withAnimation(.easeInOut){
            mapRegion = MKCoordinateRegion(
                center: location.coordinates,
                span: mapSpan)
        }
    }
    
     func toggleLocationList(){
        withAnimation(.easeInOut){
            showLocationsList.toggle()
        }
    }
    
    func nextLocation(location: Location){
        withAnimation(.easeInOut){
        mapLocation = location
        showLocationsList = false
       }
    }
    
    func nextButtonPressed(){
        
        guard  let currIndex = locations.firstIndex (where: {$0 == mapLocation})else {
            return
        }
        
        let nextIndex = currIndex + 1
        guard locations.indices.contains(nextIndex)else {
            
            guard  let firstIndex = locations.first else { return }
            nextLocation(location: firstIndex)
            return
        }
        let nextLoc = locations[nextIndex]
        nextLocation(location: nextLoc)
    }
}
