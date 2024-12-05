//
//  ListViews.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import SwiftUI

struct ListViews: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "Yooo", isCompleted: true),
        ItemModel(title: "heyyy", isCompleted: false),
        ItemModel(title: "hiii", isCompleted: true)

    ]
    var body: some View {
        List{
            ForEach(items){ item in
                ListRowView(item: item)
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

