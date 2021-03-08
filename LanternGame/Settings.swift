//
//  Settings.swift
//  LanternGame
//
//  Created by User22 on 2021/3/8.
//

import Foundation

class Settings: ObservableObject {
    let settingTime = 30
    @Published var isStart = false
    @Published var starting = false
    @Published var started = false
    @Published var mainOpacity = 1.0
    @Published var gameTime = 10
    @Published var timeZero = false
    @Published var showMenu = false
    @Published var timer = Timer.publish (every: 1, on: .main, in: .common)
}
