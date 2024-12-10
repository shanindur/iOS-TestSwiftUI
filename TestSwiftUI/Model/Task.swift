//
//  Task.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-12-09.
//
import Foundation
import SwiftData

@Model
class Task: Identifiable {
    var id: String
    var name: String
    
    init(name: String) {
        self.id = UUID().uuidString
        self.name = name
    }
}
