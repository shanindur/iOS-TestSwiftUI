//
//  SideMenu.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-12-25.
//
import SwiftUI

struct SideMenu: View {
    @State private var showMenu = false
    
    var body: some View {
        ZStack {
            // Main Content
            MainView(showMenu: $showMenu)
                .offset(x: showMenu ? 250 : 0)
                .scaleEffect(showMenu ? 0.8 : 1)
                .animation(.easeInOut, value: showMenu)
            
            // Side Menu
            if showMenu {
                SideMenuView()
                    .transition(.move(edge: .leading))
            }
        }
        .background(Color.black.opacity(showMenu ? 0.5 : 0).ignoresSafeArea())
        .onTapGesture {
            if showMenu {
                showMenu.toggle()
            }
        }
    }
}

struct MainView: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Main Content")
                    .font(.largeTitle)
                    .padding()
                
                Spacer()
            }
            .navigationBarTitle("Side Menu Example", displayMode: .inline)
            .navigationBarItems(leading: Button(action: {
                withAnimation {
                    showMenu.toggle()
                }
            }) {
                Image(systemName: "line.horizontal.3")
                    .font(.title)
            })
        }
    }
}

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .resizable()
                    .frame(width: 50, height: 50)
                Text("User Name")
                    .font(.title2)
                    .bold()
            }
            .padding(.top, 50)
            .padding(.leading)
            
            Divider()
                .padding(.vertical)
            
            VStack(alignment: .leading) {
                MenuItem(icon: "house.fill", title: "Home")
                MenuItem(icon: "gear", title: "Settings")
                MenuItem(icon: "info.circle", title: "About")
                Spacer()
            }
            .padding(.leading)
        }
        .frame(maxWidth: 250, alignment: .leading)
        .background(Color(UIColor.systemGray6))
        .edgesIgnoringSafeArea(.vertical)
    }
}

struct MenuItem: View {
    var icon: String
    var title: String
    
    var body: some View {
        HStack {
            Image(systemName: icon)
                .frame(width: 24, height: 24)
            Text(title)
                .font(.headline)
        }
        .padding(.vertical, 10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
