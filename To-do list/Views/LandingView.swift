//
//  LandingView.swift
//  To-do list
//
//  Created by Yuzhou Zhang on 2024-04-08.
//

import SwiftUI

struct LandingView: View {
    @State var searchText = ""
    var body: some View {
        NavigationView{
            VStack {
                List{
                    ItemView(itemTodo: "walking")
                    ItemView(itemTodo: "dog")
                }
                .searchable(text: $searchText)
                
            }
        }
        .navigationTitle("To do")
    }
}

#Preview {
    LandingView()
}
