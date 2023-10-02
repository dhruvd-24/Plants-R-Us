//
//  ContentView.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/11/23.
//

import SwiftUI


struct ContentView: View {
    let plant: Plant
    var body: some View {
        ZStack{
            RadialGradient(stops:[
                .init( color: Color(red: 0.306, green: 0.522, blue: 0.318), location: 0.3),
                .init(color: Color(red: 0.961, green: 0.941, blue: 0.861), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            ScrollView {
                Image(plant.name)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 300, height: 200)
                    .aspectRatio(contentMode: .fill)
                    .padding()
                
                Text("About")
                    .foregroundColor(.black)
                    .font(.largeTitle.weight(.black))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 20)
                Text(plant.about)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Care")
                    .foregroundColor(.black)
                    .font(.largeTitle.weight(.black))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 20)
                Text(plant.care)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding()
                
                Text("Propogate")
                    .foregroundColor(.black)
                    .font(.largeTitle.weight(.black))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 20)
                Text(plant.propogate)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding()
                    
            }
        }
        .navigationTitle(plant.name).foregroundColor(.green)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ContentView(plant: Plants().primary)
        }
    }
}
