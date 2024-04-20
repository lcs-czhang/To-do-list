//
//  LandingView.swift
//  To-do list
//
//  Created by Yuzhou Zhang on 2024-04-08.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    @State var searchText = ""
    @State var newItemDescription = ""
    @Environment(\.modelContext) var modelContext
    @Query var todos: [TodoItem]
    var body: some View {
        NavigationView{
            VStack {
                List {
                    ForEach(todos) { todo in
                        ItemView(currentItem: todo)
                    }
                    .onDelete(perform: removeRows)
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
            .navigationTitle("To do")
            .onAppear{
                printCommandToOpenDatabaseFile()
            }
        }
    }
    func createTodo(withTitle title: String){
        let todo = TodoItem(title: title, done: false)
        modelContext.insert(todo)
    }
    func removeRows(at offsets: IndexSet) {
        
        // Accept the offset within the list
        // (the position of the item being deleted)
        //
        // Then ask the model context to delete this
        // for us, from the 'todos' array
        for offset in offsets {
            modelContext.delete(todos[offset])
        }
    }
}

#Preview {
    LandingView()
        .modelContainer(TodoItem.preview)
}
