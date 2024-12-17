//
//  ListViews.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import SwiftUI

struct ListViews: View {

    @EnvironmentObject var listViewModel:ListViewModel
    
    var body: some View {
        List{
            ForEach(listViewModel.items){ item in
                ListRowView(item: item)
                    .onTapGesture() {
                        withAnimation(.linear){
                            listViewModel.updateItem(item: item)
                        }
                    }
            }
            .onDelete(perform: listViewModel.deleteItem)
            .onMove(perform: listViewModel.moveItem)
          
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
    NavigationStack{
        ListViews()
            .environmentObject(ListViewModel())
    }
}

