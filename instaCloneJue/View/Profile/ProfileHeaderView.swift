//
//  ProfileHeaderView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 20/10/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user : User
    var body: some View {
        VStack{
            //Pic and Stats
            HStack{
                CircleImage(imageName: "BlackPanther", width: 80, height: 80 )
                Spacer()
                UserStackView(value : "3" , name: "Posts")
                Spacer()
                UserStackView(value : "4" , name: "Followers")
                Spacer()
                UserStackView(value : "9" , name: "Following")
            }
            //name and nickname
            VStack(alignment: .leading, spacing: 8){
                Text("Rafhael Pillaca")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Rafha")
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
    }
}

#Preview {
    ProfileHeaderView(user: User.MOCK_USERS[0])
}
