//
//  CountView.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-12-02.
//

import SwiftUI

struct CountView: View {
    @State private var rating: Int = 5
    
    var body: some View {
        
        NavigationStack{
            
            VStack {
                VStack{
                    
                    Gauge(value: Double(rating), in: 0...10) {
                        Text("Progress")
                            .font(.largeTitle)
                    }
                }
                
                Spacer()
                
                HStack(spacing: 40) {
                    
                    Button(action: {
                        withAnimation{
                            rating -= 1
                        }
                    }) {
                        
                        Image(systemName: "minus.circle")
                            .resizable()
                            .frame(width: 50, height: 50) // Sets the image size
                    }
                    .disabled(rating == 0)
                    
                    
                    Text(String(rating))
                        .font(.largeTitle)
                        .contentTransition(.numericText(value: Double(rating)))
                    
                    Button(action: {
                        withAnimation{
                            rating += 1
                        }
                    }) {
                        
                        Image(systemName: "plus.circle")
                            .resizable()
                            .frame(width: 50, height: 50) // Sets the image size
                    }
                    .disabled(rating == 10)
                    
                }
                
            }
            .frame(width: 220, height: 200)
        }
        .navigationTitle("Rating")
        
        
    }
}


#Preview {
    CountView()
}
