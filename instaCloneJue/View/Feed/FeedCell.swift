//
//  FeedCell.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 7/09/23.
//

import SwiftUI

struct FeedCell: View {
    let post :Post
    var body: some View {
        VStack{
            //PIc and Name
            HStack{
                
                if let user = post.user {
                    CircleImage(imageName: user.profileImageUrl ?? "", width: 40, height: 40 )
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                
                Spacer()
            }
            .padding(.leading,8)
            
            //Image Post
            
            Image(post.imageUrml)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipped()
            
            //Buton actions
            HStack{
                Button {
                   
                } label: {
                    Image(systemName: "heart")
                }
                
                Button {
                   
                } label: {
                    Image(systemName: "bubble.right")
                }
                
                Button {
                   
                } label: {
                    Image(systemName: "paperplane")
                }
                
                Spacer()
            }
            .foregroundColor(.black)
            .padding(.leading,8)
            .padding(.top,4)
            
            //Likes
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            //Caption
            HStack{
                Text("\(post.user?.username ?? "")")
                    .fontWeight(.semibold)
                +
                Text("\(post.caption)")
                Spacer()
            }
            .font(.footnote)
            .padding(.leading,10)
            .padding(.top,1)
            
            //Time
            Text("6h ago")
                .font(.footnote)
                .foregroundColor(.gray)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            
        }//End Vstack main
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POSTS[2])
    }
}
