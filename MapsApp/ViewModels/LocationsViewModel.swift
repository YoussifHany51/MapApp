//
//  LocationsViewModel.swift
//  MapsApp
//
//  Created by Youssif Hany on 17/02/2022.
//

import Foundation


class LocationViewModel: ObservableObject {
    
    @Published var locations: [Location]
    
    init(){
        let locations = LocationsDataService.locations
        self.locations = locations
    }
    
}
