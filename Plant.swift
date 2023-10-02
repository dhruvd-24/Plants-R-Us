//
//  Plant.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/11/23.
//

import Foundation

//enum Size {
//    case small
//    case medium
//    case large
//}
//
//enum Difficulty {
//    case easy
//    case intermediate
//    case advanced
//}
//
//enum Light {
//    case low
//    case medium
//    case high
//}
//
//enum Flowering {
//    case yes
//    case no
//}
//
//enum Water {
//    case low
//    case medium
//    case high
//}

struct Plant: Decodable, Identifiable {
    
    let id: Int
    let name: String
    let size: String
    let difficulty: String
    let light: String
    let flowering: String
    let water: String
    let about: String
    let care: String
    let propogate: String

    static let example = Plant(id: 1, name: "", size: "", difficulty: "", light: "", flowering: "", water: "", about: "", care: "", propogate: "")
}


