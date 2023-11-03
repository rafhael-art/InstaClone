//
//  ProfileView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 31/08/23.
//

import SwiftUI

struct ProfileView: View {
    let user : User

    var posts : [Post]{
        return Post.MOCK_POSTS.filter({$0.user?.username == user.username})
    }
    
    var body: some View {
        VStack{
            ScrollView{
                VStack{
                    //Pic and Stats
                    HStack{
                        CircleImage(imageName:user.profileImageUrl ?? "", width: 80, height: 80 )
                        Spacer()
                        UserStackView(value : "3" , name: "Posts")
                        Spacer()
                        UserStackView(value : "4" , name: "Followers")
                        Spacer()
                        UserStackView(value : "9" , name: "Following")
                    }
                    //name and nickname
                    VStack(alignment: .leading, spacing: 8){
                        Text(user.username)
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text(user.bio ?? "")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity,alignment: .leading)
                    
                    //Button
                    Button {
                      
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                            .frame(width: 360, height: 32)
                            .overlay(
                                RoundedRectangle(cornerRadius: 6)
                                    .stroke(Color.gray,lineWidth: 1)
                            )
                    }

                }.padding(.horizontal)
                
                    PostGridView(posts: posts)
            }
            
        }
    }
}
#Preview {
    ProfileView(user: User.MOCK_USERS[2])
}

 
