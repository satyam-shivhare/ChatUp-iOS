//
//  Message.swift
//  ChatUp
//
//  Created by Satyam Shivhare on 05/04/23.
//

import Foundation

struct Message: Identifiable, Codable{
    var id: String
    var text: String
    var received : Bool
    var timestamp: Date
}
