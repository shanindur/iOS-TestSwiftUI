//
//  AlbumView.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-11-28.
//

import SwiftUI

struct AlbumView: View {
    var body: some View {
        NavigationStack {
            VStack{
                Text("AlbumView")
                Image(systemName: "star.fill")
                Text("AlbumView")
            }
        }
        .navigationTitle("Album")
    }
}

#Preview {
    AlbumView()
}

