//
//  ContentView.swift
//  SwiftUIChatApp 
// Created by Mohamed Riffath on  9/23/24.



import SwiftUI


struct ContentView: View {
    
    var messageArray = ["Hello you","How are you doign?","I' have been building applications from scratch, and its so fun"]
    var body: some View {
        VStack {
           TitleRow()
        
            ScrollView{
                ForEach(messageArray,id:\.self){ text in
                    MessageBubble(message: Message(id: "12345", text: text, received: true, timestamp: Date()))
                }
            }
            .padding(.top,10)
            .background(.white)
            .cornerRadius(30, corners: [.topLeft,.bottomRight])
        }
        .background(Color("Peach"))
    }
}

#Preview {
    ContentView()
}
