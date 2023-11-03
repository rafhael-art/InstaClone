//
//  AddEmailView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 12/10/23.
//

import SwiftUI

struct AddEmailView: View {
    @State private var email :String = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing:12){
            Text("Add your email")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            Text("You'll use this email to sing in to you account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            TextField("Email",text: $email)
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .modifier(IGTextFieldModifier())
            
            NavigationLink{
                CreateUsernameView()
                    .navigationBarBackButtonHidden(true)
            }label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .frame(width: 360,height: 44)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
           
           
            
            Spacer()
            
        }
        .toolbar{
            ToolbarItem(placement: .navigationBarLeading){
                Image(systemName: "chevron.backward")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
                    
            }
        }
    }
}

#Preview {
    AddEmailView()
}
