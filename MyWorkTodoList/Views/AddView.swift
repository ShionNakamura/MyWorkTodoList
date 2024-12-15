//
//  AddView.swift
//  MyWorkTodoList
//
//  Created by 仲村士苑 on 2024/12/04.
//

import SwiftUI

struct AddView: View {
    @State var textField: String = ""
    @EnvironmentObject var listViewModel:ListViewModel
    @Environment(\.presentationMode) var presentaionMode
    @State var showAlert:Bool = false
    @State var alertTitle = ""
    var body: some View {
        ScrollView{
            
            TextField("please type something", text: $textField)
                .padding()
                .font(.headline)
                .frame(maxHeight: 55)
                .background(Color.gray.opacity(0.5))
           
            Button {
                saveButtonPressed()
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
        .alert(isPresented: $showAlert) {
            getAlert()
        }
    }
    
    func saveButtonPressed(){
        if textIsAppropiate(){
            listViewModel.addItem(title: textField)
            presentaionMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropiate()->Bool{
       if textField.count < 3{
            alertTitle = "Uuu suckss"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert()->Alert{
        return Alert(title: Text(alertTitle))
    }
}

#Preview {
    NavigationView{
        AddView()
            .environmentObject(ListViewModel())
    }
}
