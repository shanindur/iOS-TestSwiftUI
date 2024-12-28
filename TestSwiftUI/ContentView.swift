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
                    Text("Slide")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: AlbumView()) {
                    Text("Album")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: CountView()) {
                    Text("Rating")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: ToDoView()){
                    Text("Task List")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: HealthAppView()){
                    Text("Health App")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: ChartView()){
                    Text("Chart")
                        .frame(width: 120, height: 20)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                
                NavigationLink(destination: AlertView()){
                    Text("Alert Dialog")
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
