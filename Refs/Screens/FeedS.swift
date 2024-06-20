//
//  FeedS.swift
//  Refs
//
//  Created by Ульяна on 20.06.2024.
//

import SwiftUI

struct FeedS: View {
    @State var selected = 0
    
    var body: some View {
        ZStack(alignment: .top) {
                if self.selected == 0 {
                    NewFeed()
                } else {
                    PopularFeed()
                }
                
                    Text("Лента ответов").multilineTextAlignment(.leading).font(.custom("Fugue-Regular", size: 18)).foregroundColor(Color.black).padding(.top, 20)
                    Divider()
            
                    Picker("AllTasks", selection: $selected, content: {
                        Text("новые").tag(0)
                        Text("популярные").tag(1)
                    })
                    .frame(width: 270)
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.top, 60)
                }
    }
}


struct NewFeed: View {

    var body: some View {
        ZStack(alignment: .top) {
           ScrollView(.vertical, showsIndicators: false) {
                Image("Feed 1").frame(width: 360, height: 360).padding(.bottom, 10)
                Image("Feed 2").frame(width: 360, height: 360).padding(.bottom, 10)
                Image("Feed 3").frame(width: 360, height: 360).padding(.bottom, 40)
           }.frame(maxHeight: .infinity)//ScrollView
        }.padding(.top, 110)//ZStack
    }//body
}//struct

struct PopularFeed: View {

    var body: some View {
        ZStack(alignment: .top) {
            ScrollView(.vertical, showsIndicators: false) {
                Image("Feed 4").frame(width: 360, height: 360).padding(.bottom, 10)
                Image("Feed 5").frame(width: 360, height: 360).padding(.bottom, 10)
                Image("Feed 6").frame(width: 360, height: 360).padding(.bottom, 40)
            }.frame(maxHeight: .infinity)//ScrollView
        }.padding(.top, 110)//ZStack
    }//body
}//struct
