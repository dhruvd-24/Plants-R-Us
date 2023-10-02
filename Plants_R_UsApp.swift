//
//  Plants_R_UsApp.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/11/23.
//

import SwiftUI

@main
struct Plants_R_UsApp: App {
    
    @StateObject var plants = Plants()
    
    @State var filter = ""
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    HomeView()
                }
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("home")
                }
                
                NavigationView {
                    SearchView()
                }
                .navigationTitle("Catalog").foregroundColor(.brown)
                .tabItem {
                    Image(systemName: "list.bullet.rectangle.fill")
                    Text("search")
                }
                NavigationView {
                    CareView()
                }
                .tabItem {
                    Image(systemName: "cross.case.fill")
                    Text("care")
                }
                
            }
            .environmentObject(plants)
        }
    }
}
