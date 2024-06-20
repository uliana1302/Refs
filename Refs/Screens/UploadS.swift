//
//  UploadS.swift
//  Refs
//
//  Created by Ульяна on 20.06.2024.
//

import SwiftUI
import PhotosUI

struct UploadS: View {
    @StateObject var viewModel = UserModel()
    @State private var selectedItem: PhotosPickerItem?
    @State private var selectedPhotoData: Data?
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView(.vertical, showsIndicators: false) {
                Text("Загрузить находку").multilineTextAlignment(.leading).font(.custom("Fugue-Regular", size: 18)).foregroundColor(Color.black).padding(.top, 20)
                Divider()
                VStack {
                    Image("IT5").frame(width: 328, height: 328)
                    HStack {
                        Text("R19").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                        Image("Part2").frame(width: 81.5, height: 28)
                        Spacer()
                    }.frame(width: 340)//HStack
                }.padding(.top, 10)//VStack
                PhotosPicker(selection: $selectedItem, matching: .images) {
                    Image("Upload").frame(width: 328, height: 328).padding(.top, 10)
                }
                PrimaryButton(text: "опубликовать") {
                    //viewModel.saveInUserDefaults()
                }.frame(width: 200).padding(.top, 20).padding(.bottom, 40).padding(.leading, -120)
            }//ScrollView
        }//ZStack
    }//body
}//struct
