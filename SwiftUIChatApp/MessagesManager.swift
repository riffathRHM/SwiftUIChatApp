//
//  MessagesManager.swift
//  SwiftUIChatApp 
// Created by Mohamed Riffath on  10/7/24.



import Foundation
import FirebaseFirestore
import FirebaseFirestoreCombineSwift

class MessagesManager:ObservableObject {
    @Published private(set) var messages:[Message] = []
    let db = Firestore.firestore()
    
    init () {
        getMessages()
    }
    
    func getMessages() {
        db.collection("messages").addSnapshotListener { querySnapshot , error in
            guard let documents = querySnapshot?.documents else {
                print("Error fetching documnets:\(String(describing: error))")
            return
            }
            self.messages = documents.compactMap{ document -> Message? in
                do{
                    return try document.data(as:Message.self)
                }
                catch{
                    print("Error decoding document into message:\(error)")
                    return nil
                }
            }
            self.messages.sort{$0.timestamp < $1.timestamp}
        }
    }
}
