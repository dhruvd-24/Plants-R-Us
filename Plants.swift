//
//  Plants.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/11/23.
//

import Foundation

class Plants: ObservableObject {
    let forest: [Plant]
    var arrName = Array <String> ()
    var dict = [String: Plant] ()
    var primary: Plant {
        forest[0]
    }

    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        let data = try! Data(contentsOf: url)
        forest = try! JSONDecoder().decode([Plant].self, from: data)
        
        for item in forest {
            arrName.append(item.name)
        }
        
        for i in 0..<72 {
            dict[arrName[i]] = forest[i]
        }
    }
}
