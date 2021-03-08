//
//  ContentView.swift
//  WordBook
//
//  Created by User16 on 2021/3/3.
//

import SwiftUI

struct HomepageView: View {
    @StateObject var settings = Settings()
    @StateObject var gameInfo = GameInfo()
    var body: some View {
        if !settings.isStart{
            ZStack{
                Image("homepage")
                    
                VStack{
                    Text("元宵燈謎")
                        
                        
                    Text("大挑戰")
                        
                }
                .foregroundColor(Color.black)
                .font(Font.system(size: 60))
                .offset(y:-310)
                
                Button(action: {
                    settings.isStart = true
                    showStarting()
                }) {
                    Text("Start")
                        .font(Font.system(size: 30))
                        .frame(width: 200, height: 60, alignment: .center)
                        .foregroundColor(.blue)
                        .cornerRadius(50)
                        
                }
                .background(Color.yellow)
                .frame(width: 200, height: 60, alignment: .center)
                .cornerRadius(50)
                .shadow(radius: 20)
                .offset(y:160)
            }
        }
        else{
            StructureView().environmentObject(settings).environmentObject(gameInfo)
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

struct HomepageView_Previews: PreviewProvider {
    static var previews: some View {
        HomepageView()
    }
}
