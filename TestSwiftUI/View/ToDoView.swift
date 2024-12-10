//
//  ToDoView.swift
//  TestSwiftUI
//
//  Created by Shanindu Rajapaksha on 2024-12-09.
//
import SwiftUI
import SwiftData

struct ToDoView: View {
    
    @Environment(\.modelContext) private var context
    
    @Query private var tasks: [Task]
    
    var body: some View {
        
        Text("Tap on this button to add Task")
        Button("Add Task") {
            addTask()
        }
        
        List {
            ForEach(tasks) { task in
                HStack{
                    Text(task.name)
                    Spacer()
                    Button{
                        updateTask(task)
                    }label: {
                        Image(systemName: "arrow.triangle.2.circlepath")
                    }
                }
                
            }
            .onDelete{ indexes in
                for index in indexes {
                    deleteTask(tasks[index])
                }
            }
        }
        .padding()
    }
    
    func updateTask(_ task:Task) {
        task.name = "Updated Task"
        try? context.save()
    }
    
    func addTask() {
        let task = Task(name: "New Task")
         
        context.insert(task)
    }
    
    func deleteTask(_ task: Task) {
        context.delete(task)
    }
    
}

#Preview {
    ToDoView()
}
