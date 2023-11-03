//
//  User.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 12/10/23.
//

import Foundation

struct User : Identifiable,Codable, Hashable{
    let id:String
    var username : String
    var profileImageUrl : String?
    var fullname : String?
    var bio: String?
    var email : String
}

extension User{
    static var MOCK_USERS :[User] = [
        .init(id: NSUUID().uuidString, username: "Batman", profileImageUrl: "Batman" ,fullname: "Bruce Waynw", bio: "Gothen´s Dark Knight", email: "batman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "Ironman", profileImageUrl: "Ironman" ,fullname: "Tony Stark", bio: "Gothen´s Dark Knight", email: "ironman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "spiderman", profileImageUrl: "spiderman" ,fullname: "Petter Parker", bio: "Gothen´s Dark Knight", email: "spiderman@gmail.com"),
        .init(id: NSUUID().uuidString, username: "BlackPanther", profileImageUrl: "BlackPanther" ,fullname: "T´Chala", bio: "Gothen´s Dark Knight", email: "BlackPanther@gmail.com")
    ]
}
