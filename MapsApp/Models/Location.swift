//
//  Location.swift
//  MapsApp
//
//  Created by Youssif Hany on 17/02/2022.
//

import Foundation
import MapKit

struct Location: Identifiable{
    
    //let id = UUID().uuidString
    let name : String
    let cityName : String
    let coordinates : CLLocationCoordinate2D
    let description : String
    let imageName : [String]
    
    var id: String {
        name + cityName
    }
    
}
