//
//  CircleImage.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 7/09/23.
//

import SwiftUI

struct CircleImage: View {
    let imageName: String
    let width:CGFloat
    let height:CGFloat
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFill()
            .frame(width: width,height: height)
            .clipShape(Circle())
    }
}

