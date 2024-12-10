//
//  AlbumView.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-11-28.
//

import SwiftUI

struct AlbumView: View {
    @State private var isFavorite = false
    
    var body: some View {
        NavigationStack {
            VStack{
                Image("city")
                    .resizable()
                    .cornerRadius(10)
                    .padding()
                    .aspectRatio(contentMode: .fit)
                    .shadow(radius: 10)
                HStack(spacing: 20){
                    Button(action: {
                        self.isFavorite.toggle()
                    }) {
                        if isFavorite{
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .tint(Color.red)
                        }else{
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 30, height: 30)
                                .tint(Color.red)
                        }
                        
                        
                    }
                    
                    Text("New Your City")
                        .font(.title)
                        .multilineTextAlignment(.center)
                }
                
            }
            .padding()
        }
        .navigationTitle("Album")
    }
}

#Preview {
    AlbumView()
}

