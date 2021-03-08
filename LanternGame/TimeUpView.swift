//
//  TimeUpView.swift
//  LanternGame
//
//  Created by User16 on 2021/3/5.
//

import SwiftUI

struct TimeUpView: View {
    @State private var image = "three"
    @EnvironmentObject var gameInfo: GameInfo
    @EnvironmentObject var settings: Settings
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                /*Image("wallpapper")
                    .resizable()
                    .background(Color.black)
                    .frame(width: geometry.size.width, height: geometry.size.height)*/
                    
                VStack(alignment: .center){
                    Text("TIMES")
                        .font(Font.custom("", size: 80.0))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .frame(width: 300)
                    Text("UP!!")
                        .font(Font.custom("Montserrat-Bold", size: 80.0))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.bottom,50)
                        .frame(width: 300)
                    
                    Text("回答了\(String(gameInfo.totalNum))題").font(Font.system(size: 30)).foregroundColor(.white)
                    Text("答對\(String(gameInfo.bingoNum)) 題").font(Font.system(size: 30)).foregroundColor(.white)
                    Text("答錯\(String(gameInfo.wrongNum)) 題").font(Font.system(size: 30)).foregroundColor(.white)
                    Text("總計獲得 \(String(gameInfo.score)) 分").foregroundColor(.white)
                        .padding(.top,10)
                    HStack{
                        Button(action: {
                            settings.isStart = false
                            
                        }, label: {
                            Text("回首頁")
                                .font(Font.system(size: 30))
                                .frame(width: 200, height: 60, alignment: .center)
                                .cornerRadius(30)
                        })
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .frame(width: 130, height: 80, alignment: .center)
                        .cornerRadius(20)
                        
                        Button(action: {
                            showStarting()
                            
                        }, label: {
                            Text("再來一局")
                                .font(Font.system(size: 30))
                                .frame(width: 200, height: 60, alignment: .center)
                                .cornerRadius(30)
                            
                        })
                        .foregroundColor(.white)
                        .background(Color.gray)
                        .frame(width: 150, height: 80, alignment: .center)
                        .cornerRadius(20)
                        .padding(.leading,50)
                    }.padding(.top,50)
                    
                }
                .padding()
                .font(Font.system(size: 45))
            }            
            .background(Color.black)
            .frame(width: geometry.size.width, height: geometry.size.height)
            
        }
    }
    
    func showStarting() {
        settings.starting = true
        settings.mainOpacity = 0.5
        settings.gameTime = settings.settingTime
        settings.started = false
        settings.timeZero = false
        settings.timer = Timer.publish (every: 1, on: .main, in: .common)
        settings.timer.connect().cancel()
        settings.showMenu = false
        gameInfo.bingoNum = 0
        gameInfo.totalNum = 0
        gameInfo.wrongNum = 0
        gameInfo.score = 0
    }
    
}

struct TimeUpView_Previews: PreviewProvider {
    static var previews: some View {
        TimeUpView()
    }
}
