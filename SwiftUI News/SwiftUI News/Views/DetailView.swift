//
//  DetailView.swift
//  SwiftUI News
//
//  Created by IBE on 08/09/2021.
//

import SwiftUI

struct DetailView: View {
    let url: String?
    
    var body: some View {
        Text("Hello, World!")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: "https://www.google.com")
    }
}
