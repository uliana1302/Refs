//
//  AllTasksCV.swift
//  Refs
//
//  Created by Екатерина Никифорова on 27.03.2024.
//

import SwiftUI

struct AllTasksCV: View {
    @State var selected = 0
    
    var body: some View {
        ZStack(alignment: .top) {
            
            Color.lightGray.ignoresSafeArea()
            
            
            if self.selected == 0 {
                AllTasks()
            } else {
                InSearch()
            }
            
            
            VStack {
                        Picker("AllTasks", selection: $selected, content: {
                            Text("все задания").tag(0)
                            Text("в поиске").tag(1)
                        })
                        .frame(width: 270)
                        .pickerStyle(SegmentedPickerStyle())
            }.padding(.top, 5)
            
        }
    }
}

struct AllTasks: View {
    @State private var showSheet:Bool = false
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            Text("идёт голосование").multilineTextAlignment(.leading).font(.custom("FugueHead", size: 26)).foregroundColor(Color.black).padding(.leading, -60).padding(.top, 70).padding(.bottom, -5)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    VStack {
                        Image("AT1").frame(width: 296, height: 296)
                        HStack {
                            Text("С12").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                            Spacer()
                            PrimaryButtonSmall(text: "подробнее") {
                                showSheet.toggle()
                            }.frame(width: 140).sheet(isPresented: $showSheet){
                                
                                ChallengePageC()
                                   .presentationDetents([.large])
                                   .transition(.move(edge: .bottom))
                           }
                        }//HStack
                    }.padding(.trailing, 12)//VStack
                    
                    VStack {
                        Image("AT2").frame(width: 296, height: 296)
                        HStack {
                            Text("S27").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                            Spacer()
                            PrimaryButtonSmall(text: "подробнее") {}.frame(width: 140)
                        }//HStack
                    }.padding(.trailing, 12)//VStack
                    
                    VStack {
                        Image("AT3").frame(width: 296, height: 296)
                        HStack {
                            Text("S43").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                            Spacer()
                            PrimaryButtonSmall(text: "подробнее") {}.frame(width: 140)
                        }//HStack
                    }.padding(.trailing, 40)//VStack
                    
                }.padding(.leading, 40).padding(.top, 10) //HStack
            }//Scrollview
            
                VStack {
                    Text("хочешь своё задание дня?").multilineTextAlignment(.leading).font(.custom("FugueHead", size: 24)).foregroundColor(Color.black).frame(width: 239).padding(.top, 10).padding(.leading, -72)
                    Text("Помни, что если ты откроешь реф и не выполнишь задание, то не сможешь отвечать на него вместе со всеми позже").multilineTextAlignment(.leading).font(.custom("Fugue-Regular", size: 18)).foregroundColor(Color.black).frame(width: 239).padding(.leading, -23).padding(.top, 6)
                    HStack {
                        SecondaryButtonSmall(text: "отказаться") {
                            //goToZero()
                        }
                        Spacer()
                        PrimaryButtonSmall(text: "открыть реф") {
                            //opened()
                        }
                    }.frame(width: 268).padding(.top, 10)//HStack
                    Image("AT4").frame(width: 296, height: 296).padding(.top, 60)
                }.frame(width: 328, height: 649).background(Color.white).cornerRadius(30).padding(.top, 40)//VStack
            
            HStack {
                Text("все задания").font(.custom("FugueHead", size: 26)).foregroundColor(Color.black).padding(.top, 40)
                Text("3").multilineTextAlignment(.center).font(.custom("Fugue-Regular", size: 16)).foregroundColor(Color.black).frame(width: 36, height: 36).overlay(
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
            }.padding(.leading, -95).padding(.top, 10)//HStack
            
                VStack {
                    VStack {
                        Image("AT5").frame(width: 296, height: 296)
                        HStack {
                            Text("R17").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                            Spacer()
                            PrimaryButtonSmall(text: "присоединиться") {}.frame(width: 170)
                        }.frame(width: 296)//HStack
                    }//VStack
                    HStack {
                        Image("AT5_1").frame(width: 144, height: 144)
                        Image("AT5_2").frame(width: 144, height: 144)
                    }
                    HStack {
                        Image("AT5_3").frame(width: 144, height: 144)
                        Image("AT5_4").frame(width: 144, height: 144)
                    }
                    HStack {
                        Image("AT5_5").frame(width: 144, height: 144)
                        Image("AT5_6").frame(width: 144, height: 144)
                    }
                }.frame(width: 328, height: 854).background(Color.white).cornerRadius(30).padding(.top, 20).padding(.bottom, 10)//VStack
            
            VStack {
                VStack {
                    Image("AT6").frame(width: 296, height: 296)
                    HStack {
                        Text("S2").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                        Spacer()
                        PrimaryButtonSmall(text: "присоединиться") {}.frame(width: 170)
                    }.frame(width: 296)//HStack
                }//VStack
                HStack {
                    Image("AT6_1").frame(width: 144, height: 144)
                    Image("AT6_2").frame(width: 144, height: 144)
                }
                HStack {
                    Image("AT6_3").frame(width: 144, height: 144)
                    Image("AT6_4").frame(width: 144, height: 144)
                }
                HStack {
                    Image("AT6_5").frame(width: 144, height: 144)
                    Image("AT6_6").frame(width: 144, height: 144)
                }
            }.frame(width: 328, height: 854).background(Color.white).cornerRadius(30).padding(.bottom, 10)//VStack
            
            VStack {
                VStack {
                    Image("AT7").frame(width: 296, height: 296)
                    HStack {
                        Text("C30").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                        Spacer()
                        PrimaryButtonSmall(text: "присоединиться") {}.frame(width: 170)
                    }.frame(width: 296)//HStack
                }//VStack
                HStack {
                    Image("AT7_1").frame(width: 144, height: 144)
                    Image("AT7_2").frame(width: 144, height: 144)
                }
                HStack {
                    Image("AT7_3").frame(width: 144, height: 144)
                    Image("AT7_4").frame(width: 144, height: 144)
                }
                HStack {
                    Image("AT7_5").frame(width: 144, height: 144)
                    Image("AT7_6").frame(width: 144, height: 144)
                }
            }.frame(width: 328, height: 854).background(Color.white).cornerRadius(30).padding(.bottom, 40)//VStack

            
        }.frame(maxHeight: .infinity)//Scrollview
    }//body
}//struct


struct InSearch: View {
    @State private var showSheet:Bool = false
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
        VStack {
            Text("истекающие").multilineTextAlignment(.leading).font(.custom("FugueHead", size: 24)).foregroundColor(Color.black).frame(width: 239).padding(.top, 10).padding(.leading, -140)
            VStack {
                Image("IT1").frame(width: 296, height: 296)
                HStack {
                    Text("T58").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                    Spacer()
                    PrimaryButtonSmall(text: "загрузить находку") {}.frame(width: 170)
                }.frame(width: 296)//HStack
            }//VStack
            VStack {
                Image("IT2").frame(width: 296, height: 296)
                HStack {
                    Text("C42").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                    Spacer()
                    PrimaryButtonSmall(text: "загрузить находку") {}.frame(width: 170)
                }.frame(width: 296)//HStack
            }//VStack
        }.frame(width: 328, height: 804).background(Color.white).cornerRadius(30).padding(.top, 76)//VStack
            
            HStack {
                Text("у вас в поиске").font(.custom("FugueHead", size: 26)).foregroundColor(Color.black).padding(.top, 40).padding(.leading, 40)
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
                Image("IT3").frame(width: 328, height: 328).padding(.bottom, 20)
                HStack {
                    Text("C20").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                    Spacer()
                    PrimaryButtonSmall(text: "загрузить находку") {}.frame(width: 170)
                }.frame(width: 328).padding(.bottom, 30)//HStack
            }//VStack
            VStack {
                Image("IT4").frame(width: 328, height: 328)
                HStack {
                    Text("R28").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                    Spacer()
                    PrimaryButtonSmall(text: "загрузить находку") {}.frame(width: 170)
                }.frame(width: 328).padding(.bottom, 30)//HStack
            }//VStack
            VStack {
                Image("IT5").frame(width: 328, height: 328)
                HStack {
                    Text("R19").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                    Spacer()
                    PrimaryButtonSmall(text: "загрузить находку") {
                        showSheet.toggle()
                    }.frame(width: 170).sheet(isPresented: $showSheet){
                        
                        ChallengePageR()
                           .presentationDetents([.large])
                           .transition(.move(edge: .bottom))
                   }
                }.frame(width: 328).padding(.bottom, 30)//HStack
            }//VStack
            VStack {
                Image("IT6").frame(width: 328, height: 328)
                HStack {
                    Text("F55").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                    Spacer()
                    PrimaryButtonSmall(text: "загрузить находку") {}.frame(width: 170)
                }.frame(width: 328).padding(.bottom, 30)//HStack
            }//VStack
            VStack {
                Image("IT7").frame(width: 328, height: 328)
                HStack {
                    Text("S40").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                    Spacer()
                    PrimaryButtonSmall(text: "загрузить находку") {}.frame(width: 170)
                }.frame(width: 328).padding(.bottom, 30)//HStack
            }//VStack
            VStack {
                Image("IT8").frame(width: 328, height: 328)
                HStack {
                    Text("T22").font(.custom("Fugue-Regular", size: 36)).foregroundColor(Color.black)
                    Spacer()
                    PrimaryButtonSmall(text: "загрузить находку") {}.frame(width: 170)
                }.frame(width: 328).padding(.bottom, 40)//HStack
            }//VStack
            
        }.frame(maxHeight: .infinity)//Scrollview
    }//body
}//struct
