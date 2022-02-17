//
//  MapsAppApp.swift
//  MapsApp
//
//  Created by Youssif Hany on 17/02/2022.
//

import SwiftUI

@main
struct MapsAppApp: App {
    
    @StateObject private var vm = LocationViewModel()

    
    var body: some Scene {
        WindowGroup {
            LocationView()
                .environmentObject(vm)
        }
    }
}
