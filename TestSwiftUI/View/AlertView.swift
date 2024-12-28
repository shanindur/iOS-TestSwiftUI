//
//  AlertView.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-12-28.
//
import SwiftUI

struct AlertView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var showAlert: Bool = false
    
    var body: some View {
        VStack{
            
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
            
            Button("Login"){
                if username.isEmpty || password.isEmpty{
                    showAlert = true
                }
            }
            .alert("Please fill in all the fields", isPresented: $showAlert){
                Button("Ok", role: .cancel){}
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    AlertView()
}
