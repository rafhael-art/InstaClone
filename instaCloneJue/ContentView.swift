//
//  ContentView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 31/08/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = ContentViewModel()
    
    var body: some View {
        if viewModel.userSession == nil {
            LoginView()
        }else{
            MainTabView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
