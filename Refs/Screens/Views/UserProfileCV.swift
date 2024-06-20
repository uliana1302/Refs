//
//  UserProfileCV.swift
//  Refs
//
//  Created by Екатерина Никифорова on 18.02.2024.
//

import SwiftUI

struct ProfileS: View {
    @StateObject var viewModel = UserModel()
    
    @State private var password = ""
    @State private var isPasswordVisible = false
    
    var body: some View {
       NavigationView  {
            
            ZStack(alignment: .top) {
                    Color.lightGray.ignoresSafeArea()

                    ScrollView(.vertical, showsIndicators: false) {
                            VStack {
                                VStack {
                                    HStack{
                                        VStack {
                                            Image("AvatarProfile").frame(width: 136, height: 136, alignment: .center)
                                            Text("@uvvorobyova").font(.custom("Fugue-Regular", size: 22)).foregroundColor(Color.mainBlue)
                                        }.padding(.top, 30)//VStack
                                        VStack {
                                            Text("500").font(.custom("Fugue-Regular", size: 48)).foregroundColor(Color.mainBlue)
                                            Text("баллов").font(.custom("Fugue-Regular", size: 16)).foregroundColor(Color.mainBlue).padding(.bottom, 3)
                                            Text("16").font(.custom("Fugue-Regular", size: 48)).foregroundColor(Color.mainBlue)
                                            Text("находок").font(.custom("Fugue-Regular", size: 16)).foregroundColor(Color.mainBlue)
                                        }.padding(.leading, 20).padding(.top, 30)//VStack
                                    }//HStack

                                    NavigationLink(destination: UserProfileCV(), label: {
                                        Image("EditButton").frame(width: 30, height: 30)
                                    }).padding(.top, -220).padding(.leading, -130)
                                    
                                }.frame(width: 288, height: 250).overlay(
                                    RoundedRectangle(cornerRadius: 30)
                                        .stroke(Color.lightBlue, lineWidth: 1)
                                ).padding(.leading, 4).padding(.top, 4)//VStack
                                
                                HStack {
                                    Text("поБеды").font(.custom("FugueHead", size: 26)).foregroundColor(Color.black).padding(.top, 40)
                                    Text("3").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 16)).foregroundColor(Color.black).frame(width: 36, height: 36).overlay(
                                        RoundedRectangle(cornerRadius: 60)
                                            .stroke(Color.black, lineWidth: 1)
                                    ).padding(.leading, 10).padding(.top, 35)
                                }.padding(.leading, 42).padding(.top, -20).padding(.leading, -168)//HStack
                                
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    HStack {
                                        Image("V1").frame(width: 226, height: 226)
                                        Image("V2").frame(width: 226, height: 226).padding(.leading, 10)
                                        Image("V3").frame(width: 226, height: 226).padding(.leading, 10).padding(.trailing, 20)
                                    }.padding(.leading, 24).padding(.top, 10)//HStack
                                }//ScrollView
                            }.frame(width: 328, height: 600).background(Color.white).cornerRadius(30)//VStack
                            
                            HStack {
                                Text("твои находки").font(.custom("FugueHead", size: 26)).foregroundColor(Color.black).padding(.top, 40).padding(.leading, 30)
                                Text("6").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 16)).foregroundColor(Color.black).frame(width: 36, height: 36).overlay(
                                    RoundedRectangle(cornerRadius: 60)
                                        .stroke(Color.black, lineWidth: 1)
                                ).padding(.leading, 10).padding(.top, 35)
                            }.padding(.leading, -100)//HStack
                            HStack {
                                Text("S").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 30)).foregroundColor(Color.mainBlue).frame(width: 36, height: 36).background(Color.white).cornerRadius(60).padding(.leading, 6)
                                Text("C").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 30)).foregroundColor(Color.mainBlue).frame(width: 36, height: 36).background(Color.white).cornerRadius(60).padding(.leading, 6)
                                Text("F").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 30)).foregroundColor(Color.mainBlue).frame(width: 36, height: 36).background(Color.white).cornerRadius(60).padding(.leading, 6)
                                Text("R").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 30)).foregroundColor(Color.mainBlue).frame(width: 36, height: 36).background(Color.white).cornerRadius(60).padding(.leading, 6)
                                Text("T").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 30)).foregroundColor(Color.mainBlue).frame(width: 36, height: 36).background(Color.white).cornerRadius(60).padding(.leading, 6)
                            }.padding(.leading, -95).padding(.top, 10).padding(.bottom, 30)//HStack
                            
                            VStack {
                                Image("N1").frame(width: 296, height: 296).padding(.bottom, 20)
                                HStack {
                                    Text("S17").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                                    Spacer()
                                }.frame(width: 328).padding(.bottom, 30)//HStack
                            }//VStack
                            VStack {
                                Image("N2").frame(width: 328, height: 328)
                                HStack {
                                    Text("C29").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                                    Spacer()
                                }.frame(width: 328).padding(.bottom, 30)//HStack
                            }//VStack
                            VStack {
                                Image("N3").frame(width: 328, height: 328)
                                HStack {
                                    Text("S34").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                                    Spacer()
                                }.frame(width: 328).padding(.bottom, 30)//HStack
                            }//VStack
                            VStack {
                                Image("N4").frame(width: 328, height: 328)
                                HStack {
                                    Text("R9").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                                    Spacer()
                                }.frame(width: 328).padding(.bottom, 30)//HStack
                            }//VStack
                            VStack {
                                Image("N5").frame(width: 328, height: 328)
                                HStack {
                                    Text("C12").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                                    Spacer()
                                }.frame(width: 328).padding(.bottom, 30)//HStack
                            }//VStack
                            VStack {
                                Image("N6").frame(width: 328, height: 328)
                                HStack {
                                    Text("C30").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                                    Spacer()
                                }.frame(width: 328).padding(.bottom, 40)//HStack
                            }//VStack
                    }
                    .frame(maxHeight: .infinity)//Scrollview
            }//ZStack
       }//NavView
    }//body
}//struct


struct UserProfileCV: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @StateObject var viewModel = UserModel()
    
    @State private var password = ""
    @State private var isPasswordVisible = false
    
    var body: some View {
        VStack(spacing: 20){
            
            Spacer()
                .navigationBarBackButtonHidden(true)
                .toolbar(content: {
                    ToolbarItem (placement: .navigationBarLeading) {
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                            Image("BackButton").frame(width: 41, height: 41)
                        })
                    }
                })
            
            Section {
                ChangableAvatarView(viewModel: viewModel)
            }.frame(width: 136, height: 136, alignment: .center).padding(.top, -30)
            
            VStack {
                Form {
                    List{
                        
                        Section {
                            HStack(spacing: 12){
                                Image("NameIcon")
                                VStack(alignment: .leading, spacing: 2){
                                    Text("Имя").foregroundStyle(Color.gray).font(.custom("Fugue-Regular", size: 12))
                                    TextField("Name", text: $viewModel.name, prompt: Text("Ульяна")).frame(alignment: .center).font(Font.custom("Fugue-Regular", size: 16))
                                }
                            }
                        }
                        
                        Section{
                            HStack(spacing: 12){
                                Image("NicknameIcon")
                                VStack(alignment: .leading, spacing: 2){
                                    Text("Ник").foregroundStyle(Color.gray).font(.custom("Fugue-Regular", size: 12))
                                    TextField("Nickname", text: $viewModel.nickname, prompt: Text("Refs13")).frame(alignment: .center).font(.custom("Fugue-Regular", size: 16))
                                }
                            }
                        }
                        
                        Section {
                            HStack(spacing: 12){
                                Image("EmailIcon")
                                VStack(alignment: .leading, spacing: 2){
                                    Text("Почта").foregroundStyle(Color.gray).font(.custom("Fugue-Regular", size: 12))
                                    TextField("Email", text: $viewModel.email, prompt: Text("U.mail.com")).frame(alignment: .center).font(.custom("Fugue-Regular", size: 16))
                                }
                            }
                        }
                        Section {
                            HStack(spacing: 12){
                                Image("PasswordIcon")
                                VStack(alignment: .leading, spacing: 2){
                                    Text("Пароль").foregroundStyle(Color.gray).font(.custom("Fugue-Regular", size: 12))
                                    TextField("Password", text: $viewModel.password, prompt: Text("Test13")).frame(alignment: .center).font(.custom("Fugue-Regular", size: 16))
                                }
                            }
                        }
                            Section{
                                HStack(spacing: 12){
                                    Image("TgIcon")
                                    VStack(alignment: .leading, spacing: 2){
                                        Text("Telegram").foregroundStyle(Color.gray).font(.custom("Fugue-Regular", size: 12))
                                        TextField("Telegram", text: $viewModel.tg, prompt: Text("@uvvorobyova")).frame(alignment: .center).font(.custom("Fugue-Regular", size: 16))
                                    }
                                }
                            }
                    }.listSectionSpacing(.compact)
                }.scrollContentBackground(.hidden).scrollDisabled(true).frame(height: 380).padding(.top, -20)
            }
 
            HStack(alignment: .center, spacing: 12){
                SecondaryButton(text: "сбросить") {
                    restore(viewModel: viewModel)
                }
                
                PrimaryButton(text: "сохранить") {
                    viewModel.saveInUserDefaults()
                }
            }.padding()
        }.background(Color.lightGray)
    }
    
    @MainActor
        func restore(viewModel: UserModel) {
            let data = UserDefaults.standard.data(forKey: "Avatar") ?? UIImage(named: "Warning")!.jpegData(compressionQuality: 1)!
            let image = UIImage(data: data)!
            viewModel.setImageStateSuccess(image: Image(uiImage: image))
            
            for key in viewModel.keyValues {
                switch key {
                case "Name": viewModel.name = UserDefaults.standard.string(forKey: key) ?? ""
                case "Email": viewModel.email = UserDefaults.standard.string(forKey: key) ?? ""
                case "Nickname": viewModel.nickname = UserDefaults.standard.string(forKey: key) ?? ""
                case "TG": viewModel.tg = UserDefaults.standard.string(forKey: key) ?? ""
                    
                default: print("Unknown value")
                    
                }
        }
    }
}

