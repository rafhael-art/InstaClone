//
//  CurrentUserProfileView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 19/10/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user : User

    var posts : [Post]{
        return Post.MOCK_POSTS.filter({$0.user?.username == user.username})
    }
    
    var body: some View {
        VStack{
            ScrollView{
                ProfileHeaderView(user: user)               
                
                PostGridView(posts: posts)
                
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
