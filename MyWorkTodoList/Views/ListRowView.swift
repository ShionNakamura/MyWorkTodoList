//
//  ListRowView.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import SwiftUI

struct ListRowView: View {
    var title: String
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
        }
    }
}


#Preview {
    ListRowView(title: "this is my 1")
}
