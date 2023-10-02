//
//  teach.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/25/23.
//

import Foundation

//class Plants: ObservableObject {
//    let forest: [Plant]
//    var arrName = Array <String> ()
//    var dict = [String: Plant] ()
//    var primary: Plant {
//        forest[0]
//    }
//
//    init() {
//        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
//        let data = try! Data(contentsOf: url)
//        forest = try! JSONDecoder().decode([Plant].self, from: data)
//
//        for item in forest {
//            arrName.append(item.name)
//        }
//
//        for i in 0..<72 {
//            dict[arrName[i]] = forest[i]
//        }
//    }
//}

class Teach: ObservableObject {
    let lessons: [Learn]
    var careName = Array <String> ()
    var primary: Learn {
        lessons[0]
    }
    
    init() {
        
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
                let data = try! Data(contentsOf: url)
                lessons = try! JSONDecoder().decode([Learn].self, from: data)
        
        for item in lessons {
            careName.append(item.title)
        }
    }
}
