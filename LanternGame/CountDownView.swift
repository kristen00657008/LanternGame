//
//  CountDownView.swift
//  LanternGame
//
//  Created by User22 on 2021/3/8.
//

import SwiftUI

struct CountDownView: View {
    @EnvironmentObject var settings: Settings
    @EnvironmentObject var gameInfo: GameInfo
    @State var CountdownTimer = Timer.publish (every: 1, on: .main, in: .common)
    @State private var timeRemaining = 2
    @State private var isActive = true
    @State private var timeZero = false
    @State private var image = "three"
    
    var body: some View {
        
        ZStack {
            Image(image)
                .resizable()
                .frame(width: 100, height: 100)
        }
        .frame(width: 300, height: 100)
        .cornerRadius(20).shadow(radius: 20)
        .onAppear(perform: {
            self.CountdownTimer = Timer.publish (every: 1, on: .main, in: .common)
            self.CountdownTimer.connect()
            self.timeRemaining = 2
        })
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            self.isActive = false
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            self.isActive = true
        }
        .onReceive(CountdownTimer) { time in
            guard self.isActive else { return }
            if self.timeRemaining >= 0 {
                if timeRemaining == 3 {
                    image = "three"
                }
                else if timeRemaining == 2 {
                    image = "two"
                }
                else if timeRemaining <= 1 {
                    image = "one"
                    
                }
                
                self.timeRemaining -= 1
            }
            if self.timeRemaining < 0 {
                print("countdownzero")
                settings.mainOpacity = 1.0
                self.timeZero = true
                settings.starting = false
                settings.started = true
                
            }
        }
    }
}


struct CountDownView_Previews: PreviewProvider {
    static var previews: some View {
        CountDownView()
    }
}
