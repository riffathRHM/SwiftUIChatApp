//
//  MessageField.swift
//  SwiftUIChatApp 
// Created by Mohamed Riffath on  9/29/24.



import SwiftUI

struct MessageField: View {
    
    @EnvironmentObject var messagesManager:MessagesManager
    @State private var message = ""
    
    var body: some View {
        HStack {
            CustomTextField(placeholder: Text("Enter your message here"), text: $message)
            Button{
                messagesManager.sendMessage(text: message)
                message = ""
            }label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("Peach"))
                    .cornerRadius(50)
            }
        }.padding(.horizontal)
         .padding(.vertical,10)
         .background(Color("Gray"))
         .cornerRadius(50)
         .padding()
    }
}

#Preview {
    MessageField()
        .environmentObject(MessagesManager())
}

struct CustomTextField:View {
    var placeholder:Text
    @Binding var text:String
    var editingChanged:(Bool) -> () = {_ in}
    var commit:() ->() = {}
    
    
    var body:some View {
        ZStack(alignment:.leading){
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            TextField("",text:$text,onEditingChanged: editingChanged,onCommit: commit)
        }
    }
}
