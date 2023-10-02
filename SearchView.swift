//
//  SearchView.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/11/23.
//

import SwiftUI

struct SearchView: View {
    @StateObject var plants = Plants()
    @State  var array = Plants().forest
    var arrName = Plants().arrName
    @State private var searchText = ""
    @State var dict = Plants().dict
    
    @State private var isSideBarOpened = false
    @State private var s = "any"
    @State private var d = "any"
    @State private var l = "any"
    @State private var f = "any"
    @State private var w = "any"
    
    
    var body: some View {
        
        ZStack {
            NavigationView{
                ZStack{
                    LinearGradient(gradient: Gradient(colors: [Color(red: 0.961, green: 0.941, blue: 0.861), Color(red: 0.306, green: 0.522, blue: 0.318)]), startPoint: .top, endPoint: .bottom)
                        .ignoresSafeArea()
                    
                    ScrollView{
                        
                        if s == "any" && d == "any" && l == "any" && f == "any" && w == "any" {
                            ForEach(garden, id: \.self) { flower in
                            NavigationLink(destination: ContentView(plant: dict[flower.capitalized, default: Plants().primary])) {
                                ZStack {
                                    Image(flower.capitalized)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 150)
                                        .cornerRadius(25)
                                        .padding()
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.black.opacity(0.2))
                                        .frame(width: 350, height: 150)
                                    Text(flower.capitalized)
                                        .foregroundColor(.white)
                                        .font(.title.weight(.heavy))
                                        .padding()
                                }
                            }
                            }
                        }
                        else {
                            ForEach(harvest, id: \.self) { flower in
                            NavigationLink(destination: ContentView(plant: dict[flower.capitalized, default: Plants().primary])) {
                                ZStack {
                                    Image(flower.capitalized)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 150)
                                        .cornerRadius(25)
                                        .padding()
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.black.opacity(0.2))
                                        .frame(width: 350, height: 150)
                                    Text(flower.capitalized)
                                        .foregroundColor(.white)
                                        .font(.title.weight(.heavy))
                                        .padding()
                                }
                            }
                            }
                        }
                    }
                    .toolbar {
                        Button {
                            isSideBarOpened.toggle()
                        } label: {
                            HStack{
                                Label("Toggle SideBar", systemImage: "line.3.horizontal.circle.fill")
                                    .foregroundColor(.white)
                                    .padding(5)
                                Text("Filter")
                                    .padding(5)
                                    .foregroundColor(.white)
                               
                            }
                            .background(.brown)
                            .clipShape(Capsule())
                        }
                        //.navigationBarTitleDisplayMode(.inline)
                        .searchable(text: $searchText)
                        .navigationTitle("Catalog")
                        
                    }
                    
                }
                
            }
            SideBarView(isSideBarVisible: $isSideBarOpened, size: $s, difficulty: $d, light: $l, flowering: $f, water: $w)
       
        }
        
    }
    
    var garden: [String] {
        
        let lcgarden = arrName.map { $0.lowercased()}

        return searchText == "" ? lcgarden : lcgarden.filter {
            $0.contains(searchText.lowercased())
        }
        
    }
    
    var harvest: [String] {
        
        let lcharvest = arrName.map { $0.lowercased()}
        var temp = Array <String> ()
        for item in 0..<72 {
            if (array[item].size == s || s == "any") && (array[item].difficulty == d || d == "any")  && (array[item].light == l || l == "any")  && (array[item].flowering == f || f == "any")  && (array[item].water == w || w == "any")  {
                
                temp.append(lcharvest[item])
            }
            
        }
        print(temp)
        return temp
    }
}

struct SearchView_Previews: PreviewProvider {

    static var previews: some View {
        NavigationView {
            SearchView()
        }
    }
}
