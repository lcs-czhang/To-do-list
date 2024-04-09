//
//  LandingView.swift
//  To-do list
//
//  Created by Yuzhou Zhang on 2024-04-08.
//

import SwiftUI

struct LandingView: View {
    @State var searchText = ""
    @State var newItemDescription = ""
    @State var todos: [TodoItem] = exampleItems
    var body: some View {
        NavigationView{
            VStack {
                List(todos){ todo in
                    ItemView(currentItem: todo)
                        .swipeActions(allowsFullSwipe: true){
                            Button("Delete", role: .destructive, action:{
                                deleteTodo(todo)
                            })
                        }
                }
                .searchable(text: $searchText)
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                        createTodo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty == true)
                }
                .padding (20)
            }
        }
        .navigationTitle("To do")
    }
    func createTodo(withTitle title: String){
        let todo = TodoItem(title: title, done: false)
        todos.append(todo)
    }
    func deleteTodo(_ todo: TodoItem){
        todos.removeAll{ currentItem in
            currentItem.id == todo.id
        }
    }
}

#Preview {
    LandingView()
}
