//
//  GuideView.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/24/23.
//

import SwiftUI

struct GuideView: View {
    
    let learn : Learn
    var body: some View {
        ZStack{
            RadialGradient(stops:[
                .init( color: Color(red: 26/255, green: 86/255, blue: 194/255), location: 0.3),
                .init(color: Color(red: 0.961, green: 0.941, blue: 0.861), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            ScrollView{
                Image(learn.title)
                    .resizable()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .frame(width: 300, height: 200)
                    .aspectRatio(contentMode: .fill)
                    .padding()
                Text(learn.sec1)
                    .foregroundColor(.black)
                    .font(.largeTitle.weight(.black))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 20)
                
                Text(learn.con1)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding()
                
                Text(learn.sec2)
                    .foregroundColor(.black)
                    .font(.largeTitle.weight(.black))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 20)
                
                Text(learn.con2)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding()
                
                Text(learn.sec3)
                    .foregroundColor(.black)
                    .font(.largeTitle.weight(.black))
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(x: 20)
                
                Text(learn.con3)
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .padding()
            }
            
        }
        .navigationTitle(learn.title)
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView(learn: Teach().primary )
    }
}
