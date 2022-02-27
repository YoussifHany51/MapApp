//
//  LocationsListView.swift
//  MapsApp
//
//  Created by Youssif Hany on 18/02/2022.
//

import SwiftUI

struct LocationsListView: View {
    
    @EnvironmentObject private var vm : LocationViewModel
    
    var body: some View {
        List{
            ForEach(vm.locations){ location in
                Button{
                    vm.nextLocation(location: location)
                } label: {
                    listRowView(location: location)
                }
                .padding(.vertical,4)
                .listRowBackground(Color.clear)
                

            }
        }
        .listStyle(PlainListStyle())
    }
}

struct LocationsListView_Previews: PreviewProvider {
    static var previews: some View {
        LocationsListView()
            .environmentObject(LocationViewModel())
    }
}


extension LocationsListView {
    
    private func listRowView(location: Location) -> some View {
        HStack{
            if let imageName = location.imageName.first{
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width:45,height: 45)
                    .cornerRadius(10)
            }
            
            VStack(alignment: .leading){
                Text(location.name)
                    .font(.headline)
                Text(location.cityName)
                    .font(.subheadline)
            }
            .frame(maxWidth:.infinity,alignment: .leading)
        }
    }
}
