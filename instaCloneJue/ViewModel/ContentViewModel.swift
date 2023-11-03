//
//  ContentViewModel.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 2/11/23.
//

import Foundation
import FirebaseAuth
import Combine

class ContentViewModel:ObservableObject{
    
    private let service = AuthService.shared
    @Published var userSession : FirebaseAuth.User?
    private var cancellation = Set<AnyCancellable>()
    init(){
        setupSuscriber()
    }
    
    func setupSuscriber(){
        service.$userSession.sink{ [weak self] userSession in
            self?.userSession = userSession
        }
        .store(in: &cancellation)
        
    }
    
}
