//
//  UploadPostView.swift
//  instaCloneJue
//
//  Created by Rafhael Pillaca Pariona on 20/10/23.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    @State private var caption = ""
    @State private var imagePicturePresented = false
    @State private var photoItem : PhotosPickerItem?
    @StateObject var viewModel = UploadPostViewModel()
    @Binding var tabIndex : Int
    var body: some View {
        VStack{
            //action tool ba
            HStack{
                Button{
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                }label: {
                    Text("cancel")
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button{
                    print("Upload")
                }label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
            }
            .padding(.horizontal)
            
            //post image caption
            HStack(spacing:8){
                if let image = viewModel.postImage{
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100,height: 100)
                        .clipped()
                }
                
                TextField("Enter your caption",text : $caption,axis: .vertical)
            }
            .padding()
            Spacer()
        }
        .onAppear{
            imagePicturePresented.toggle()
        }
        .photosPicker(isPresented: $imagePicturePresented, selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
