//
//  AuthService.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 2/11/23.
//

import Foundation
import FirebaseAuth

class AuthService {
    @Published var userSession : FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init(){
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail : String, password : String) async throws{
        
    }
    
    func createUser(withEmail : String,username : String, password : String) async throws{
        
    }
    
    func LoadUserData() async throws{
        
    }
    
    func Singout(){
        
    }
}

