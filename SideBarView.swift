//
//  SideBarView.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/21/23.
//

import SwiftUI

struct SideBarView: View {
    
    @Binding var isSideBarVisible: Bool
    @Binding var size : String
    @Binding var difficulty : String
    @Binding var light : String
    @Binding var flowering : String
    @Binding var water : String
    
    var sideBarWidth = UIScreen.main.bounds.size.width * 0.7
    var sideColor : Color = Color(.init(.brown))
    var body: some View {
        ZStack {
                GeometryReader { _ in
                    EmptyView()
                }
                .background(.black.opacity(0.6))
                .opacity(isSideBarVisible ? 1 : 0)
                .animation(.easeInOut.delay(0.2), value: isSideBarVisible)
                .onTapGesture {
                    isSideBarVisible.toggle()
                }
                content
            }
            .edgesIgnoringSafeArea(.all)
        }
    
    var content: some View {
        HStack(alignment: .top) {
            ZStack(alignment: .top){
                sideColor
                
                VStack{
                    Spacer()
                    
                    Text("Filter")
                        .font(.largeTitle).fontWeight(.black)
                        .foregroundColor(Color(red: 0.961, green: 0.941, blue: 0.861))
                        .padding(30)
                        .offset(y: 50)
                    Form{
                        Section{
                            Picker("Size", selection: $size){
                                Text("any").tag("any")
                                Text("small").tag("small")
                                Text("medium").tag("medium")
                                Text("large").tag("large")
                            }
                            .pickerStyle(.automatic)
                            .padding()
                            
                            
                            Picker("Difficulty", selection: $difficulty){
                                Text("any").tag("any")
                                Text("easy").tag("easy")
                                Text("intermediate").tag("intermediate")
                                Text("advanced").tag("advanced")
                            }
                            .pickerStyle(.automatic)
                            .padding()
                            
                            Picker("Light", selection: $light){
                                Text("any").tag("any")
                                Text("low").tag("low")
                                Text("medium").tag("medium")
                                Text("high").tag("high")
                            }
                            .pickerStyle(.automatic)
                            .padding()
                            
                            Picker("Flowering", selection: $flowering){
                                Text("any").tag("any")
                                Text("yes").tag("yes")
                                Text("no").tag("no")
                            }
                            .pickerStyle(.automatic)
                            .padding()
                            
                            Picker("Water", selection: $water){
                                Text("any").tag("any")
                                Text("low").tag("low")
                                Text("medium").tag("medium")
                                Text("high").tag("high")
                            }
                            .pickerStyle(.automatic)
                            .padding()
                            
                          
                        }
                        .listRowBackground(Color(red: 0.961, green: 0.941, blue: 0.861))
                        
                        HStack{
                            Button("Clear"){
                                size = "any"
                                difficulty = "any"
                                light = "any"
                                flowering = "any"
                                water = "any"
                            }
                            .buttonStyle(BorderedButtonStyle())
                            .foregroundColor(.brown)
                            
                            
                            Spacer()
                            Button("Done") {
                                isSideBarVisible.toggle()
                            }
                            .buttonStyle(BorderedButtonStyle())
                            .foregroundColor(.brown)
                            
                        }
                        .listRowBackground(Color(red: 0.961, green: 0.941, blue: 0.861))

                    }
                    .scrollContentBackground(.hidden)
                    
                   

                }
                

                    
            }
            .frame(width: sideBarWidth)
            .offset(x: isSideBarVisible ? 0 : -sideBarWidth)
            .animation(.default, value: isSideBarVisible)

            Spacer()
        }
    }
}

//struct SideBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        @Binding var isSidebarVisible: Bool
//        SideBarView(isSideBarVisible: $isSideBarVisible)
//    }
//}
