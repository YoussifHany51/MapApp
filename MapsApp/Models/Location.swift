//
//  Location.swift
//  MapsApp
//
//  Created by Youssif Hany on 17/02/2022.
//

import Foundation
import MapKit

struct Location: Identifiable , Equatable {
        
    //let id = UUID().uuidString
    let name : String
    let cityName : String
    let coordinates : CLLocationCoordinate2D
    let description : String
    let imageName : [String]
    
    var id: String {
        name + cityName
    }
    
    //Equatable
    static func == (lhs: Location, rhs: Location) -> Bool {
        lhs.id == rhs.id
    }
    
}
