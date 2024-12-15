//
//  ItemModel.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import Foundation

struct ItemModel:Identifiable{
    let id: String
    let title: String
    let isCompleted: Bool
    
    init(id:String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
    
    func itemCompletion()->ItemModel{
       return ItemModel(id:id ,title:title, isCompleted: !isCompleted)
   }
    
    }

