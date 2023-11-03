//
//  Post.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 19/10/23.
//

import Foundation

struct Post : Identifiable,Hashable, Codable{
    let id:String
    let ownerUid : String
    let caption : String
    let likes :Int
    let imageUrml : String
    let timestamp : Date
    var user : User?
}

extension Post{
    static var MOCK_POSTS : [Post] = [
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "Wakanda Forever", likes: 104, imageUrml: "BlackPanther", timestamp: Date(), user: User.MOCK_USERS[3]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "El caballero de la noche", likes: 104, imageUrml: "Batman", timestamp: Date(), user: User.MOCK_USERS[0]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "millonario", likes: 104, imageUrml: "Ironman", timestamp: Date(), user: User.MOCK_USERS[1]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "El amigable vecino", likes: 104, imageUrml: "spiderman", timestamp: Date(), user: User.MOCK_USERS[2]),
        .init(id: NSUUID().uuidString, ownerUid: NSUUID().uuidString, caption: "El amigable vecino 2", likes: 10, imageUrml: "spiderman", timestamp: Date(), user: User.MOCK_USERS[2])
    ]
}
