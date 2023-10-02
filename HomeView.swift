//
//  HomeView.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/11/23.
//

import SwiftUI

struct HomeView: View {
    @State private var size = ""
    @State var dicte = Plants().dict
    var care = Teach().lessons
    var body: some View {
            
        ZStack{
                    Color(red: 0.961, green: 0.941, blue: 0.861)
                        .ignoresSafeArea()
            ScrollView{
                ZStack{
                    Image("HomeBack")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .ignoresSafeArea()
                    //.offset(y: -60)
                    
                    Rectangle()
                        .fill(.black.opacity(0.3))
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    //.offset(y: -60)
                    //.ignoresSafeArea()
                    Text("Plants R Us")
                        .foregroundColor(.white)
                        .padding(5)
                        .background(.gray.opacity(0.7))
                        .font(.largeTitle.weight(.heavy))
                    //.offset(y:-48)
                }
                
                Section{
                    Text("About")
                        .foregroundColor(.brown)
                        .font(.largeTitle.weight(.black))
                        .frame(maxWidth: .infinity, alignment: .center)
                    
                    
                    
                    Text("Plants R Us is an app designed to make the caring for house plants much easier. With an extensive catalog that includes almost every common houseplant, users are sure to find a plant that is perfect for their home! Each Plant has a designated page that gives a detailed description of the plant and how to take care of it. On top of that, there is a \"Care\" page that details the basics of house plant gardening for beginners.")
                        .foregroundColor(.brown)
                        .font(.title3.weight(.semibold))
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding()
                        .multilineTextAlignment(.center)
                }
                //.offset(y: -50)
                ZStack{
                    Rectangle()
                        .fill(.brown)
                        .frame( height: 625)
                    //.offset(y: -60)
                    //.ignoresSafeArea()
                    VStack{
                        Text("Get Started")
                            .foregroundColor(Color(red: 0.961, green: 0.941, blue: 0.861))
                            .font(.largeTitle.weight(.black))
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .offset(y: 30)
                        Text("Check out some of the most popular houseplants")
                            .foregroundColor(Color(red: 0.961, green: 0.941, blue: 0.861))
                            .padding()
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                        
                        HStack{
                            NavigationLink(destination: ContentView(plant: dicte["Aloe", default: Plants().primary])) {
                                ZStack {
                                    Image("Aloe")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 150, height: 150)
                                        .cornerRadius(25)
                                        .padding()
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.black.opacity(0.2))
                                        .frame(width: 150, height: 150)
                                    Text("Aloe")
                                        .foregroundColor(.white)
                                        .font(.title3.weight(.heavy))
                                        .padding()
                                }
                            }
                            
                            NavigationLink(destination: ContentView(plant: dicte["Snake Plant", default: Plants().primary])) {
                                ZStack {
                                    Image("Snake Plant")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 150, height: 150)
                                        .cornerRadius(25)
                                        .padding()
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.black.opacity(0.2))
                                        .frame(width: 150, height: 150)
                                    Text("Snake Plant")
                                        .foregroundColor(.white)
                                        .font(.title3.weight(.heavy))
                                        .padding()
                                }
                            }
                            
                        }
                        
                        
                        HStack{
                            NavigationLink(destination: ContentView(plant: dicte["Peace Lily", default: Plants().primary])) {
                                ZStack {
                                    Image("Peace Lily")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 150, height: 150)
                                        .cornerRadius(25)
                                        .padding()
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.black.opacity(0.2))
                                        .frame(width: 150, height: 150)
                                    Text("Peace Lily")
                                        .foregroundColor(.white)
                                        .font(.title3.weight(.heavy))
                                        .padding()
                                }
                            }
                            
                            NavigationLink(destination: ContentView(plant: dicte["Basil", default: Plants().primary])) {
                                ZStack {
                                    Image("Basil")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 150, height: 150)
                                        .cornerRadius(25)
                                        .padding()
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.black.opacity(0.2))
                                        .frame(width: 150, height: 150)
                                    Text("Basil")
                                        .foregroundColor(.white)
                                        .font(.title3.weight(.heavy))
                                        .padding()
                                }
                            }
                            
                        }
                        
                        Text("Or click on the Catalog tab to search through a variety of plants ")
                            .foregroundColor(Color(red: 0.961, green: 0.941, blue: 0.861))
                            .padding()
                            .multilineTextAlignment(.center)
                            .fontWeight(.bold)
                        
                        Spacer()
                    }
                    .offset(y: -15)
                }
                Section{
                    ZStack{
                        Rectangle()
                            .fill(Color(red: 0.961, green: 0.941, blue: 0.861))
                            .frame( height: 500)
                        //.offset(y: -60)
                        //.ignoresSafeArea()
                        VStack{
                            Text("New to Planting?")
                                .foregroundColor(.brown)
                                .font(.largeTitle.weight(.black))
                                .frame(maxWidth: .infinity, alignment: .center)
                            
                            Text("Here are some guides to help you get started on your planting journey")
                                .foregroundColor(.brown)
                                .padding()
                                .multilineTextAlignment(.center)
                                .fontWeight(.bold)
                                .offset(y: -25)
                            
                            HStack{
                                NavigationLink(destination: GuideView(learn: care[0])) {
                                    ZStack {
                                        Image("Watering Guide")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(25)
                                            .padding()
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(.black.opacity(0.2))
                                            .frame(width: 150, height: 150)
                                        Text("Water Guide")
                                            .foregroundColor(.white)
                                            .font(.title3.weight(.heavy))
                                            .padding()
                                    }
                                }
                                
                                NavigationLink(destination: GuideView(learn: care[1])) {
                                    ZStack {
                                        Image("Lighting Guide")
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                            .frame(width: 150, height: 150)
                                            .cornerRadius(25)
                                            .padding()
                                        RoundedRectangle(cornerRadius: 25)
                                            .fill(.black.opacity(0.2))
                                            .frame(width: 150, height: 150)
                                        Text("Lighting Guide")
                                            .foregroundColor(.white)
                                            .font(.title3.weight(.heavy))
                                            .padding()
                                    }
                                }
                                
                            }
                            
                            Text("Be sure to check out the other indepth guides that are included in our Care tab")
                                .foregroundColor(.brown)
                                .padding()
                                .multilineTextAlignment(.center)
                                .fontWeight(.bold)
                            
                            
                        }
                        .offset(y: -15)
                        
                    }
                    
                }
                
            }
            
            
        }
            .navigationTitle("Home")
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
