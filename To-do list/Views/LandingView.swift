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
                }
                .searchable(text: $searchText)
                HStack {
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("ADD") {
                        // Add the new to-do item.
                    }
                    .font(.caption)
                }
                .padding (20)
            }
        }
        .navigationTitle("To do")
    }
}

#Preview {
    LandingView()
}
