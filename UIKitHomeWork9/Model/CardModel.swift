//
//  CardModel.swift
//  UIKitHomeWork9
//
//  Created by Масуд Гаджиев on 04.01.2025.
//

import Foundation

struct CardModel: Identifiable {
    var id: String = UUID().uuidString
    var avatarImage: String
    var userName: String
    var titleImage: String
    var date: String
    var title: String
    var content: String
    
    
    static var cardData: [CardModel] {
        [
            CardModel(avatarImage: "avatar1", userName: "User Name", titleImage: "image1", date: "23 апреля 2024", title: "Ut enim ad minim veniam", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in "),
            
            CardModel(avatarImage: "avatar2", userName: "User Name2", titleImage: "image2", date: "24 апреля 2024", title: "Ut enim ad minim veniam  eiusmod tempor", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore "),
            
            CardModel(avatarImage: "avatar3", userName: "User Name3", titleImage: "image3", date: "25 апреля 2024", title: "Ut enim ad minim veniam  eiusmod tempor al dek", content: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do ")
        ]
    }
}
