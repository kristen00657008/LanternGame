//
//  testView.swift
//  WordBook
//
//  Created by User16 on 2021/3/3.
//

import SwiftUI

struct testView: View {
    
    @State var timer = Timer.publish (every: 1, on: .main, in: .common)
    @State private var timeRemaining = 3
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
            self.timer = Timer.publish (every: 1, on: .main, in: .common)
            self.timer.connect()
            self.timeRemaining = 3
        })
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willResignActiveNotification)) { _ in
            self.isActive = false
        }
        .onReceive(NotificationCenter.default.publisher(for: UIApplication.willEnterForegroundNotification)) { _ in
            self.isActive = true
        }
        .onReceive(timer) { time in
            guard self.isActive else { return }
            if self.timeRemaining > 0 {
                if timeRemaining == 3 {
                    image = "three"
                }
                else if timeRemaining == 2 {
                    image = "two"
                }
                else if timeRemaining == 1 {
                    image = "one"
                }
                
                self.timeRemaining -= 1
            }
            if self.timeRemaining == 0 {
                self.timeZero = true
            }
        }
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView()
    }
}
