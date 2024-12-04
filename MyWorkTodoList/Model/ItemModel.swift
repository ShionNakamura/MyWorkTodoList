//
//  ItemModel.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import Foundation

struct ItemModel:Identifiable{
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
