//
//  NetworkManager.swift
//  SwiftUI News
//
//  Created by IBE on 08/09/2021.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { <#Data?#>, <#URLResponse?#>, <#Error?#> in
                <#code#>
            }
        }
    }
}
