//
//  LoginView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 25/09/23.
//

import SwiftUI

struct LoginView: View {
 
    @State private var email :String = ""
    @State private var password :String = ""
    
    var body: some View {
        NavigationStack{
            VStack{
                
                Spacer()
                
                //logo Image
                Image("logo")
                    .resizable()
                    .frame(width: 220,height: 80)
                
                //TextFileds
                VStack{
                    TextField("Entor your email",text: $email)
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .modifier(IGTextFieldModifier())
                    
                    SecureField("Entor your password",text: $password)
                        .modifier(IGTextFieldModifier())
                }
                Button{
                    print("Show forgot password")
                } label: {
                    Text("Forgot Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                }
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                
                Button{
                    print("Login")
                } label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 360,height: 44)
                        .background(Color(.systemBlue))
                        .cornerRadius(10)
                        
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40,height: 0.5)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40,height: 0.5)
                        
                }
                .foregroundColor(.gray)
                
                HStack{
                    Image("facebook")
                        .resizable()
                        .frame(width: 20,height: 20)
                        .cornerRadius(10)
                    Text("Continue with facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(Color(.systemBlue))
                }
                .padding(.top,8)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    HStack{
                        Text("Don´t have an account?")
                        
                        Text("Sing up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical,16)
            }
        }
    }
}

#Preview {
    LoginView()
}
