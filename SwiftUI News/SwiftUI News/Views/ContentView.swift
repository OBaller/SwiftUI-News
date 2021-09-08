//
//  ContentView.swift
//  SwiftUI News
//
//  Created by IBE on 07/09/2021.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            
            List(networkManager.posts) { post in
                NavigationLink(
                    destination: DetailView(url: post.url),
                    label: {
                        HStack {
                            Text("\(post.points)")
                            Text(post.title)
                        }
                    })
                
            }
            .navigationBarTitle("Hot News!!!")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
