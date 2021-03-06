//
//  LocationView.swift
//  MapsApp
//
//  Created by Youssif Hany on 17/02/2022.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    @EnvironmentObject private var vm: LocationViewModel
    
    var body: some View {
        NavigationView {
            ZStack{
                        Map(coordinateRegion: $vm.mapRegion,
                            annotationItems: vm.locations,
                            annotationContent: { location in
                            MapAnnotation(coordinate: location.coordinates){
                                AnnotationView()
                                    .scaleEffect(vm.mapLocation == location ? 1 : 0.7)
                                    .shadow(radius: 20)
                                    .onTapGesture {
                                        vm.nextLocation(location: location)
                                    }
                            }
                        })
                            .ignoresSafeArea()
                    
                    VStack(spacing:0){
                        
                        header
                            .padding()
                        
                        
                        
                        Spacer()
                        
                        ZStack{
                            ForEach(vm.locations){ location in
                                if  vm.mapLocation == location {
                                    LocationPerviewView(location: location)
                                        .shadow(color: Color.black.opacity(0.3), radius: 20)
                                        .padding()
                                        .transition(.asymmetric(insertion: .move(edge: .trailing),
                                        removal: .move(edge: .leading)))
                                }
                            }
                        }
                    }
                }
                .sheet(item: $vm.sheetLocation, onDismiss: nil){ location in
                    LocationDetailView(location: location)
            }
                .navigationBarHidden(true)
               // .navigationTitle("Back")
                
        }
        
    }
}

struct LocationView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LocationView()
                .environmentObject(LocationViewModel())
        }
    }
}


extension LocationView{
    private var header: some View{
        VStack {
            Button(action: vm.toggleLocationList){
                Text(vm.mapLocation.name+", "+vm.mapLocation.cityName)
                    .font(.subheadline)
                    .fontWeight(.black)
                    .foregroundColor(.primary)
                    .frame(height:55)
                    .frame(maxWidth: .infinity)
                    .animation(.none,value: vm.mapLocation)
                    .overlay(alignment: .leading){
                        Image(systemName: "arrow.down")
                            .font(.headline)
                            .foregroundColor(.primary)
                            .padding()
                            .rotationEffect(Angle(
                                degrees: vm.showLocationsList ? 180 : 0))
                }
            }
            if vm.showLocationsList{
            LocationsListView()
            }
        }
        .background(.thickMaterial)
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 15)
        
    }
    

    }


