//
//  ContentView.swift
//  SwiftUI News
//
//  Created by IBE on 07/09/2021.
//

import SwiftUI
struct Post:Identifiable {
    let id, title: String
}
let posts = [
    Post(id: "1", title: "SuperSport"),
    Post(id: "2", title: "Sky News"),
    Post(id: "3", title: "espn")
]


struct ContentView: View {
    var body: some View {
        NavigationView {
            
            List(posts) { post in
                Text(post.title)
            }
            .navigationBarTitle("Hot News!!!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
