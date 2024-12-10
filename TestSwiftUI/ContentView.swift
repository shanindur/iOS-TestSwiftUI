//
//  SlideView.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-11-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: SlideView()) {
                    Text("Slide Screen")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: AlbumView()) {
                    Text("Album Screen")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: CountView()) {
                    Text("Rating Screen")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: ToDoView()){
                    Text("ToDo Screen")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .navigationTitle("Main Screen")
            .navigationBarBackButtonHidden(true)
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
