//
//  ContentView.swift
//  SwiftUI News
//
//  Created by naseem on 07/09/2021.
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




struct ProfileCreationAlertView: View {
    
    var body: some View {
        
        ZStack() {
            
            StoreBackgroundView()
            
            
            
            VStack() {
                
                OnboardHeaderUIView(titleText: AppStringResource.profileCreationHeaderMessage, imageName: AppImage.appWhiteLogo)
                    
                    .padding(.bottom, 40)
                
                
                
                Group {
                    
                    ZStack {
                        
                        Color.white
                            
                            .cornerRadius(30, corners: [.topLeft, .topRight])
                            
                            .edgesIgnoringSafeArea(.bottom)
                        
                        VStack(alignment: .center, spacing: 20){
                            
                            Image(systemName: "checkmark.circle.fill")
                                
                                .resizable()
                                
                                .aspectRatio(contentMode: .fit)
                                
                                .frame(width: 150, height: 150)
                                
                                .foregroundColor(Color.accentColorDark)
                            
                            
                            
                            Text(AppStringResource.profileCreationBodyMessage)
                                
                                .multilineTextAlignment(.center)
                                
                                .lineLimit(3)
                                
                                .padding()
                            
                            
                            
                            PrimaryButtonView(text: "START NOW") {
                                
                                print("Hello world")
                                
                            }
                            
                        }
                        
                        .padding(16)
                        
                    }
                    
                    
                    
                }
                
                //                .padding(.to)
                
                
                
                
                
            }
            
        }
        
    }
    
    
    
}


