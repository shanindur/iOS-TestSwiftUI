//
//  SlideView.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-11-28.
//
import SwiftUI

struct SlideView: View {
    let activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    @State private var selected = "Baseball"
    @State private var id = 1
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 50){
                Text("Why not try...")
                    .font(.largeTitle)
                    .bold()
                
                
                VStack
                {
                    Circle()
                        .fill(.blue)
                        .padding()
                        .overlay{
                            Image(systemName: "figure.\(selected.lowercased())")
                                .font(.system(size:144))
                                .foregroundColor(.white)
                        }
                    
                    Text(selected)
                        .font(.title)
                    
                        .transition(.slide)
                        .id(id)
                }
                
                Button("Try Again"){
                    withAnimation(.easeOut(duration: 0.1)){
                        selected = activities.randomElement() ?? "Archery"
                        id += 1
                    }
                }
                .buttonStyle(.borderedProminent)
            }
            .padding()
        }
        .navigationTitle("Slide")
    }
}

#Preview {
    SlideView()
}

