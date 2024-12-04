//
//  ListViews.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import SwiftUI

struct ListViews: View {
    @State var items: [String] = [
        "Hi",
        "Hi",
        "Hi"
    ]
    var body: some View {
        List{
            ForEach(items,id:\.self){ item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("My workout list!!")
        .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        EditButton()
                    }
                    ToolbarItem(placement: .navigationBarTrailing) {
                        NavigationLink("追加", destination: AddView())
                    }
                }
    }
}

#Preview {
    NavigationView{
        ListViews()
    }
}

