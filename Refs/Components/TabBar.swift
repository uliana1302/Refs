//
//  TabBar.swift
//  Refs
//
//  Created by Екатерина Никифорова on 27.03.2024.
//

import SwiftUI

struct TabBar: View {
    @State var selectTab = "задания"
    
    let tabs = ["правила","задания","профиль"]
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
      
        
        ZStack(alignment: .bottom){
            TabView(selection: $selectTab ) {
               HowToPlayCV().tag("правила")
                AllTasksCV().tag("задания")
                ProfileS().tag("профиль")
            }
        }
        
        HStack {
            ForEach(tabs, id: \.self) {
                tab in
                Spacer()
                TabBarItem(tab: tab, selected: $selectTab)
                Spacer()
            }
        }.padding(.top, 10).padding(.bottom, 10).frame(maxWidth: .infinity).background(Color.white).clipShape(Capsule())
    }
}

struct TabBarItem: View{
    @State var tab: String
    @Binding var selected: String
    var body: some View{
            ZStack{
                Button{
                    withAnimation(.spring()){
                        selected = tab
                    }
                } label: {
                    VStack{
                        Image(selected == tab ? "\(tab)_active" : tab).resizable().frame(width: 32, height: 32).foregroundColor(selected == tab ? Color.mainBlue : Color.black)
                            Text(tab).font(.custom("FugueMono", size: 12)).foregroundColor(selected == tab ? Color.mainBlue : Color.black)
                        
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
