//
//  ItemView.swift
//  To-do list
//
//  Created by Yuzhou Zhang on 2024-04-08.
//

import SwiftUI
struct ItemView: View {
    @State var ifDone: Bool = false
    var itemTodo: String
    var body: some View {
        HStack{
            
            if ifDone == true{
                Image(systemName: "checkmark.circle")
                    .foregroundStyle(.blue)
                    .onTapGesture{ifDone = false}
            }else{
                Image(systemName: "circle")
                    .foregroundStyle(.blue)
                    .onTapGesture{ifDone = true}
            }
            Text(itemTodo)
        }
    }
}

#Preview {
    ItemView(itemTodo: "walking dog")
}
