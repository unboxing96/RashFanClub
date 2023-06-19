//
//  week3App.swift
//  week3
//
//  Created by kimpepe on 2023/06/01.
//

import SwiftUI

@main
struct week3App: App {
    @StateObject private var alarmData = AlarmData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(alarmData)
        }
    }
}
