//
//  ChallengeS.swift
//  Refs
//
//  Created by Ульяна on 19.06.2024.
//

import SwiftUI

struct ChallengePageC: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @StateObject var viewModel = UserModel()
    @State private var showSheet:Bool = false
    
    var body: some View {
        NavigationView {
            ZStack(alignment: .top) {
                ScrollView(.vertical, showsIndicators: false) {
                    Text("C12").multilineTextAlignment(.leading).font(.custom("Fugue-Regular", size: 18)).foregroundColor(Color.black).padding(.top, 20)
                    Divider()
                    Text("референс").multilineTextAlignment(.leading).font(.custom("FugueHead", size: 18)).foregroundColor(Color.black).padding(.top, 30).padding(.leading, -164)
                    VStack {
                        Image("AT1-1").frame(width: 328, height: 328)
                        HStack {
                            Text("C12").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                            Image("Part1").frame(width: 81.5, height: 28)
                            Spacer()
                            PrimaryButtonSmall(text: "голосовать") {
                                showSheet.toggle()
                            }.frame(width: 140).sheet(isPresented: $showSheet){
                                FeedS()
                                   .presentationDetents([.large])
                                   .transition(.move(edge: .bottom))
                            }.frame(width: 140)
                            
                        }.frame(width: 328)//HStack
                    }//VStack
                    Text("находки").multilineTextAlignment(.leading).font(.custom("FugueHead", size: 18)).foregroundColor(Color.black).padding(.top, 20).padding(.leading, -164)
                    HStack {
                        Image("Chell1").frame(width: 144, height: 144)
                        Image("Chell2").frame(width: 144, height: 144)
                    }
                    HStack {
                        Image("Chell3").frame(width: 144, height: 144)
                        Image("Chell4").frame(width: 144, height: 144)
                    }
                    HStack {
                        Image("Chell5").frame(width: 144, height: 144)
                        Image("Chell6").frame(width: 144, height: 144)
                    }.padding(.bottom, 40)
                }//ScrollView
            }//ZStack
        }//NavView
    }//body
}//struct


struct ChallengePageR: View {
    
    @Environment(\.presentationMode) private var presentationMode: Binding<PresentationMode>
    @StateObject var viewModel = UserModel()
    @State private var showSheet:Bool = false
    
    var body: some View {
        ZStack(alignment: .top) {
            ScrollView(.vertical, showsIndicators: false) {
                Text("R19").multilineTextAlignment(.leading).font(.custom("Fugue-Regular", size: 18)).foregroundColor(Color.black).padding(.top, 20)
                Divider()
                Text("референс").multilineTextAlignment(.leading).font(.custom("FugueHead", size: 18)).foregroundColor(Color.black).padding(.top, 30).padding(.leading, -164)
                VStack {
                    Image("IT5").frame(width: 328, height: 328)
                    HStack {
                        Text("R19").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                        Image("Part2").frame(width: 81.5, height: 28)
                        PrimaryButtonSmall(text: "загрузить находку") {
                            showSheet.toggle()
                        }.frame(width: 170).sheet(isPresented: $showSheet){
                            UploadS()
                               .presentationDetents([.large])
                               .transition(.move(edge: .bottom))
                        }.frame(width: 170)
                    }.frame(width: 340)//HStack
                }//VStack
                Text("находки").multilineTextAlignment(.leading).font(.custom("FugueHead", size: 18)).foregroundColor(Color.black).padding(.top, 20).padding(.leading, -164)
                HStack {
                    Image("Chell7").frame(width: 144, height: 144)
                    Image("Chell8").frame(width: 144, height: 144)
                }
                HStack {
                    Image("Chell9").frame(width: 144, height: 144)
                    Image("Chell10").frame(width: 144, height: 144)
                }
                HStack {
                    Image("Chell11").frame(width: 144, height: 144)
                    Image("Chell12").frame(width: 144, height: 144)
                }.padding(.bottom, 40)
            }//ScrollView
        }//ZStack
    }//body
}//struct
