//
//  MyWorkTodoListApp.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import SwiftUI

@main
struct MyWorkTodoListApp: App {
    
    @StateObject var listViewModel:ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ListViews()
                .environmentObject(listViewModel)
        }
    }
}
