//
//  WebView.swift
//  SwiftUI News
//
//  Created by IBE on 08/09/2021.
//
import WebKit
import SwiftUI
import Foundation

struct WebView: UIViewRepresentable {
    let urlString: String?
    func makeUIView(context: Context) ->  WebView.UIViewType {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString {
            if let url = URL(string: safeString) {
                let request = URLRequest(url: url)
                uiView.load(request)
                
            }
        }
    }
    
    
}
