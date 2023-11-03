//
//  FeedView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 7/09/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        NavigationView {
            ScrollView{
                LazyVStack{
                    //ME IMAGINO QUE IREMOS A FIREBASE
                    ForEach(Post.MOCK_POSTS){
                        post in FeedCell(post: post)
                    }
                }
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading)
                {
                    Image("logo")
                        .resizable()
                        .frame(width: 100,height: 32)
                }
                ToolbarItem(placement: .navigationBarTrailing)
                {
                    Image(systemName: "paperplane")
                         
                }
            }
        }//End Navigation view
        
        
        
    }   						
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

 
