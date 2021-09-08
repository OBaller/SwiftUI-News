//
//  PostData.swift
//  SwiftUI News
//
//  Created by IBE on 08/09/2021.
//

import Foundation

struct Results: Decodable {
    let hits: [Post]
}

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let points: Int
    let objectID: String
    let title: String
    let url: String?
    
}
