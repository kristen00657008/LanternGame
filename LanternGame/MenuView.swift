//
//  MenuView.swift
//  LanternGame
//
//  Created by User22 on 2021/3/8.
//

import SwiftUI

struct MenuView: View {
    @EnvironmentObject var gameInfo: GameInfo
    @EnvironmentObject var settings: Settings
    var body: some View {
        ZStack {
            Color.white
            VStack{
                HStack {
                    Button(action: {
                        settings.isStart = false
                    }) {
                        VStack{
                            Image("homepageBtn")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 80, height: 50)
                        }
                        
                    }
                    .padding(.leading,10)
                    Spacer()
                    Button(action: {
                        settings.showMenu = false
                        settings.mainOpacity = 1
                        showStarting()
                    }) {
                        VStack{
                            Image("restartBtn")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 45, height: 45)
                        }
                    }.padding(.top,3)
                    .padding(.trailing,10)
                    Spacer()
                    Button(action: {
                        settings.showMenu = false
                        settings.mainOpacity = 1
                        if settings.started{
                            print("generate play")
                            settings.timer = Timer.publish (every: 1, on: .main, in: .common)
                            settings.timer.connect()
                        }
                    }) {
                        VStack{
                            Image(systemName: "play.fill")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 40, height: 40)
                        }
                    }
                    .padding(.trailing,22)
                }
                HStack{
                    Text("回首頁")
                        .padding(.leading,25)
                    Spacer()
                    Text("再來一次").padding(.top,1)
                    
                    Spacer()
                    Text("繼續")
                        .padding(.trailing,25)
                }
            }
            
        }
        .frame(width: 300, height: 100)
        .cornerRadius(20).shadow(radius: 20)
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


struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
