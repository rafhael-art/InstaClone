//
//  UserStackView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 31/08/23.
//

import SwiftUI

struct UserStackView: View {
    let value : String
    let name : String
    var body: some View {
        VStack{
            Text(value)
                .fontWeight(.semibold)
            Text(name)
                .font(.footnote)
        }
    }
}

 
