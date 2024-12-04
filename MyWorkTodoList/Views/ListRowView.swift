//
//  ListRowView.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import SwiftUI

struct ListRowView: View {
    var item: ItemModel
    var body: some View {
        HStack{
            Image(systemName: item.isCompleted ? "checkmark.circle":"circle")
                .foregroundStyle(item.isCompleted ? Color.green: Color.red)
            Text(item.title)
        }
    }
}


#Preview {
    ListRowView(item: ItemModel(title: "Yoo1", isCompleted: true))
}
#Preview {
    ListRowView(item: ItemModel(title: "Yoo2", isCompleted: true))
}

