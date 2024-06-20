//
//  HowToPlayCV.swift
//  Refs
//
//  Created by Екатерина Никифорова on 27.03.2024.
//

import SwiftUI

struct HowToPlayCV: View {
    @State private var pageIndex = 0
       private let pages: [Page] = Page.samplePages
       private let dotAppearance = UIPageControl.appearance()
       
       var body: some View {
           ZStack{
               Color.lightGray.ignoresSafeArea()
               
               VStack(alignment: .leading){
                   HStack{
                       Text("6").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 26)).foregroundColor(Color.gray).frame(width: 40, height: 40).overlay(
                        RoundedRectangle(cornerRadius: 60)
                            .stroke(Color.gray, lineWidth: 1)
                       ).padding(.leading, 50)
                       
                       Text("\(pageIndex + 1)").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 42)).foregroundColor(Color.white).frame(width: 56, height: 56).background(Color.mainBlue).overlay(
                        RoundedRectangle(cornerRadius: 60)
                            .stroke(Color.white, lineWidth: 1)
                       ).padding(.leading, -100)
                   }.padding(.top, 16).padding(.leading, 30)
                   
                   TabView(selection: $pageIndex) {
                       ForEach(pages) { page in
                           VStack {
                               PageView(page: page)
                           }
                           .tag(page.tag)
                       }
                   }
                   .animation(.easeInOut, value: pageIndex)// 2
                   .indexViewStyle(.page(backgroundDisplayMode: .interactive))
                   .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                   
                   HStack(){
                       if pageIndex == 0 {
                           PrimaryButtonWhite(text: "далее") {
                               incrementPage()
                           }
                       }
                       if pageIndex > 0 && pageIndex < 5 {
                           SecondaryButtonWhite(text: "назад") {
                               goToZero()
                           }
                           Spacer()
                           PrimaryButtonWhite(text: "далее") {
                               incrementPage()
                           }
                       }
                       if pageIndex == 5 {
                           PrimaryButtonWhite(text: "в начало") {
                               goToZero()
                           }
                       }
                    }.padding().padding(.bottom, 5)
                   
               }.frame(width: 330, height: 640).background(Color.mainBlue).cornerRadius(30).onAppear {
                   dotAppearance.currentPageIndicatorTintColor = .white
                   dotAppearance.pageIndicatorTintColor = .lightGray
               }
               
               VStack(alignment: .leading) {
               }.frame(width: 280, height: 60).background(Color.mainBlue).cornerRadius(30).padding(.top, 660)
               
           }.padding(.top, -20)
           
       }
       
       func incrementPage() {
           if pageIndex != 5 {
               pageIndex += 1
           }
       }
       
       func goToZero() {
           if pageIndex == 5 {
               pageIndex = 0
           } else {
               pageIndex -= 1
           }
       }
   }
