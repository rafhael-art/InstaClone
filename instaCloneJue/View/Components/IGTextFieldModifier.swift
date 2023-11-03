//
//  IGTextFieldModifier.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 12/10/23.
//

import SwiftUI

struct IGTextFieldModifier : ViewModifier{
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(12)
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,24)
    }
}
