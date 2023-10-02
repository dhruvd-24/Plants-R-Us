//
//  learn.swift
//  Plants R Us
//
//  Created by Dhruv Dighrasker on 8/25/23.
//

import Foundation

struct Learn: Decodable, Identifiable {
    
    let id: Int
    let title: String
    let sec1: String
    let sec2: String
    let sec3: String
    let con1: String
    let con2: String
    let con3: String
    
    static let examp = Learn(id: 1, title: "", sec1: "", sec2: "", sec3: "", con1: "", con2: "", con3: "")
}
