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
        HStack(alignment: .top){
            
            if ifDone == true{
                Image(systemName: "checkmark.circle")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
                    .scaledToFill()
                    .foregroundStyle(.blue)
                    .onTapGesture{ifDone = false}
                    .padding(2.0)
            }else{
                Image(systemName: "circle")
                    .resizable()
                    .frame(width: 20.0, height: 20.0)
                    .scaledToFill()
                    .foregroundStyle(.blue)
                    .onTapGesture{ifDone = true}
                    .padding(2.0)
            }
            Text(itemTodo)
        }
    }
}

#Preview {
    ItemView(itemTodo: "walking dog")
}
