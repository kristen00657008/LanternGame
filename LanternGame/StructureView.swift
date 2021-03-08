//
//  FirstView.swift
//  WordBook
//
//  Created by User16 on 2021/3/3.
//

import SwiftUI


struct StructureView: View {
    @EnvironmentObject var settings: Settings
    @EnvironmentObject var gameInfo: GameInfo
    @State private var isActive = true
    var body: some View {
        if settings.timeZero {
            TimeUpView().environmentObject(gameInfo).environmentObject(settings)
        }
        else if settings.showMenu {
            MenuView().environmentObject(settings)
        }
        else{
            ZStack{
                VStack{
                    HStack{
                        Spacer()
                        Text("")
                        Spacer()
                        Text("Time: \(settings.gameTime)")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .padding(.horizontal, 20)
                            .padding(.vertical, 5)
                            .background(
                                Capsule()
                                    .fill(Color.black)
                                    .opacity(0.75)
                            )
                        Spacer()
                        Button(action: {
                            settings.showMenu = true
                            settings.mainOpacity = 0.5
                            settings.timer.connect().cancel()
                        }) {
                            Image("menu")
                                .resizable()
                                .renderingMode(.original)
                                .frame(width: 40, height: 40)
                        }
                        .padding(20)
                    }
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
                        self.isActive = false
                    }
                    .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
                        self.isActive = true
                    }
                    .onReceive(settings.timer) { time in
                        guard self.isActive else { return }
                        if settings.gameTime > 0 {
                            settings.gameTime -= 1
                        }
                        if settings.gameTime <= 0 {
                            timeUp()
                        }
                    }
                    
                    Spacer()
                }
                .opacity(settings.mainOpacity)
                .environmentObject(settings)
                
                if settings.starting {
                    CountDownView().environmentObject(settings)
                }
                if settings.started {
                    GameView().environmentObject(settings).environmentObject(gameInfo).onAppear(perform: {
                        print("generate gameview")
                        started()
                    })
                }
            }
            
            
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
    
    func started() {
        print("generate started")
        settings.timer = Timer.publish (every: 1, on: .main, in: .common)
        settings.timer.connect()
        settings.mainOpacity = 1
    }
    
    func timeUp(){
        settings.timeZero = true
        settings.started = false
        settings.starting = false
        print("zero" + String(settings.timeZero))
        settings.timer = Timer.publish (every: 1, on: .main, in: .common)
        settings.timer.connect().cancel()
    }
}

struct StructureView_Previews: PreviewProvider {
    static var previews: some View {
        StructureView()
    }
}

