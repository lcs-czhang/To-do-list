//
//  ItemView.swift
//  To-do list
//
//  Created by Yuzhou Zhang on 2024-04-08.
//
 
import SwiftData
import SwiftUI
struct ItemView: View {
    @Bindable var currentItem: TodoItem
    var body: some View {
        Label(
            title: {
                TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
            }, icon: {
                Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                    .onTapGesture {
                        currentItem.done.toggle()
                    }
            }
        )
    }
}
#Preview {
    
    let container = TodoItem.preview
    
    return List {
        ItemView(currentItem: TodoItem.someItem)
        ItemView(currentItem: TodoItem.anotherItem)
    }
    .modelContainer(container)
    
}
