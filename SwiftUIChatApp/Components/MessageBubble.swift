//
//  MessageBubble.swift
//  SwiftUIChatApp 
// Created by Mohamed Riffath on  9/29/24.



import SwiftUI

struct MessageBubble: View {
    var message: Message
    
    @State private var showTime = false
    
    var body: some View {
        VStack(alignment:message.received ? .leading:.trailing){
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray"):Color("Peach"))
                    .cornerRadius(30)
            }//HStack
            .frame(maxWidth:300,alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            if showTime {
                Text("\(message.timestamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing)
            }
        }.frame(maxWidth:.infinity , alignment: message.received ?.leading:.trailing)
            .padding(message.received ? . leading : .trailing)
            .padding(.horizontal,10)
    }
}

#Preview {
    MessageBubble(message: Message(id: "1234", text: "I've been coding SwiftUI application from scratch and its so much fun", received: true, timestamp: Date()))
}
