//
//  AddView.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import SwiftUI

struct AddView: View {
    @State var textField: String = ""
    var body: some View {
        ScrollView{
            
            TextField("please type something", text: $textField)
                .padding()
                .font(.headline)
                .frame(maxHeight: 55)
                .background(Color.gray.opacity(0.5))
           
            Button {
                
            } label: {
                Text("Save".uppercased())
                    .foregroundStyle(.white)
                    .frame(maxWidth:.infinity)
                    .frame(height: 50)
                    .background(.blue)
                    .cornerRadius(10)
            
            }

        }
        .navigationTitle("Add something")
        
    }
}

#Preview {
    NavigationView{
        AddView()
    }
}
