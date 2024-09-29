//
//  Message.swift
//  SwiftUIChatApp 
// Created by Mohamed Riffath on  9/29/24.



import Foundation
//Identifiable - Each message is uniqely identifed from the id

struct Message:Identifiable , Codable {
    var id:String
    var text:String
    var received:Bool
    var timestamp:Date
}
