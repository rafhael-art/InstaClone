//
//  MainTabView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 31/08/23.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectIndex = 0
    
    var body: some View {
        TabView(selection :$selectIndex){
            FeedView()
                .onAppear{
                    selectIndex=0
                }
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
                
            SeachView()
                .onAppear{
                    selectIndex=1
                }
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            UploadPostView(tabIndex: $selectIndex)
                .onAppear{
                    selectIndex=2
                }
                .tabItem {
                    Image(systemName: "plus.square")
                }.tag(2)
            
            Text("Cuarto Tab")
                .onAppear{
                    selectIndex=3
                }
                .tabItem {
                    Image(systemName: "heart")
                }.tag(3)
            
            CurrentUserProfileView(user: User.MOCK_USERS[0])
                .onAppear{
                    selectIndex=4
                }
                .tabItem {
                    Image(systemName: "person")
                }.tag(4)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
