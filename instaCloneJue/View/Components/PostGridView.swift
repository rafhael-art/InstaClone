//
//  PostGridView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 20/10/23.
//

import SwiftUI

struct PostGridView: View {
    private let columns = [GridItem(.flexible()),GridItem(.flexible()),GridItem(.flexible())]
    private let imageDimension : CGFloat = (UIScreen.main.bounds.width/3)-1
    var posts : [Post]
    var body: some View {
        LazyVGrid(columns : columns, spacing: 1)
        {
            ForEach(posts){
                post in Image(post.imageUrml)
                    .resizable()
                    .scaledToFill()
                    .frame(width: imageDimension,height: imageDimension)
                    .clipped()
            }
        }
    }
}

#Preview {
    PostGridView(posts: Post.MOCK_POSTS)
}
