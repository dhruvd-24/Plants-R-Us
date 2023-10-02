//
//  CareView.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/19/23.
//

import SwiftUI

struct CareView: View {
    
    var care = Teach().lessons
    var body: some View {
        
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 0.961, green: 0.941, blue: 0.861), Color(red: 26/255, green: 86/255, blue: 194/255)]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                ScrollView{
                    ZStack{
                        Image("Book")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea()
                        //.offset(y: -60)
                        
                        Rectangle()
                            .fill(.black.opacity(0.5))
                            .frame(maxWidth: .infinity, maxHeight: .infinity)
                        //.offset(y: -60)
                        //.ignoresSafeArea()
                        VStack{
                            Text("A Beginner's Guide")
                                .foregroundColor(.white)
                                .padding(5)
                                .background(.gray.opacity(0.7))
                                .font(.largeTitle.weight(.heavy))
                                .multilineTextAlignment(.center)
                            Text("Being a good plant parent can be difficult if you don't know where to begin. Check out some of these guides to understand the plant basics")
                                .foregroundColor(.white)
                                .padding(5)
                                //.background(.gray.opacity(0.7))
                                .font(.title2.weight(.heavy))
                                .multilineTextAlignment(.center)
                            //.offset(y:-48)
                        }
                    }
                    
                    ForEach(care) { flower in
                        
                        if flower.id % 2 == 0 {
                            NavigationLink(destination: GuideView(learn: flower)) {
                                ZStack {
                                    Image(flower.title)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 200)
                                        .cornerRadius(25)
                                        .padding()
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.black.opacity(0.3))
                                        .frame(width: 350, height: 200)
                                    Text(flower.title)
                                        .foregroundColor(.white)
                                        .font(.title.weight(.heavy))
                                        .padding()
                                        .offset(x: 50, y: 50)
                                }
                                .offset(x: -90)
                            }
                        }
                        else {
                            NavigationLink(destination: GuideView(learn: flower)) {
                                ZStack {
                                    Image(flower.title)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(width: 350, height: 200)
                                        .cornerRadius(25)
                                        .padding()
                                    RoundedRectangle(cornerRadius: 25)
                                        .fill(.black.opacity(0.3))
                                        .frame(width: 350, height: 200)
                                    Text(flower.title)
                                        .foregroundColor(.white)
                                        .font(.title.weight(.heavy))
                                        .padding()
                                        .offset(x: -40, y: 50)
                                }
                                .offset(x: 90)
                            }
                        }
                    }
                    
                }
                
            }
            .navigationTitle("Care")
        
    }
}

struct CareView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            CareView()
        }
    }
}
