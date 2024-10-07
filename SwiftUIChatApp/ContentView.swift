//
//  ContentView.swift
//  SwiftUIChatApp 
// Created by Mohamed Riffath on  9/23/24.



import SwiftUI


struct ContentView: View {
    @StateObject var messagesManager = MessagesManager()
    var messageArray = ["Hello you","How are you doign?","I' have been building applications from scratch, and its so fun"]
    var body: some View {
        VStack {
            VStack{
                TitleRow()
                
                ScrollView{
                    ForEach(messagesManager.messages,id:\.id){ message in
                        MessageBubble(message:message)
                    }
                }
                .padding(.top,10)
                .background(.white)
                .cornerRadius(30, corners: [.topLeft,.topRight])
                
            }
            .background(Color("Peach"))
            MessageField()
        }//Main VStack
    }
}

#Preview {
    ContentView()
}
