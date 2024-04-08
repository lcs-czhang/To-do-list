//
//  ItemView.swift
//  To-do list
//
//  Created by Yuzhou Zhang on 2024-04-08.
//

import SwiftUI
struct ItemView: View {
    var ifDone: Bool
    var itemTodo: String
    var body: some View {
        HStack{
            if ifDone == true{
                Image(systemName: "checkmark.circle")
                    .foregroundStyle(.blue)
            }else{
                Image(systemName: "circle")
                    .foregroundStyle(.blue)
            }
            Text(itemTodo)
        }
    }
}

#Preview {
    ItemView(ifDone: false, itemTodo: "walking dog")
}
