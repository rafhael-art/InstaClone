//
//  SeachView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 7/09/23.
//

import SwiftUI

struct SeachView: View {
    @State private var search: String = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack {
                    ForEach(User.MOCK_USERS) { user in
                        NavigationLink(destination: ProfileView(user: user)) {
                            HStack {
                                CircleImage(imageName: user.profileImageUrl ?? "", width: 40, height: 40)
                                VStack(alignment: .leading) {
                                    Text(user.username)
                                        .fontWeight(.semibold)
                                    if let fullname = user.fullname {
                                        Text(fullname)
                                    }
                                }
                                .font(.footnote)
                                Spacer()
                            }
                            .foregroundColor(.black)
                            .padding(.leading, 10)
                        }
                    }
                }
                .padding(.top, 10)
                .searchable(text: $search, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}



#Preview {
    SeachView()
}

