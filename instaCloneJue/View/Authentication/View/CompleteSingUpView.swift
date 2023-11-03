//
//  CompleteSingUpView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 12/10/23.
//

import SwiftUI

struct CompleteSingUpView: View {
 
    @Environment(\.dismiss) var dismiss
    var body: some View {
        
        VStack(spacing:12){
            Spacer()
            Text("Welcome to Instagram, stephman.dowless")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
                .multilineTextAlignment(.center)
            Text("Click below to complete registration and start using Instagram")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            Button{
                print("Complete sing up")
            }label: {
                Text("Complete Sing up")
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
    CompleteSingUpView()
}
