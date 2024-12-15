//
//  ListViewModel.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/15.
//

import Foundation

class ListViewModel:ObservableObject{
    
    @Published var items:[ItemModel] = [] 
    
    let itemsKey: String = "items_list"
    
    func getItem(){
        
        let newItem = [
            ItemModel(title: "Yooo", isCompleted: true),
            ItemModel(title: "heyyy", isCompleted: false),
            ItemModel(title: "hiii", isCompleted: true)
        ]
        items.append(contentsOf: newItem)
        
    }
    
    func deleteItem(indexSet:IndexSet){
        return items.remove(atOffsets: indexSet)
    }
    
    func moveItem(from:IndexSet, to:Int){
        return items.move(fromOffsets: from, toOffset: to)
    }
    
    func addItem(title:String){
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func updateItem(item:ItemModel){
        if let index = items.firstIndex(where: { existingItem in
            existingItem.id == item.id
        })
        {
            items[index] = item.itemCompletion()
        }
    }
    
  
}
