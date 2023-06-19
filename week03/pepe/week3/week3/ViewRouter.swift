//
//  ViewRouter.swift
//  week3
//
//  Created by kimpepe on 2023/06/05.
//

import Foundation

class Alarm: ObservableObject, Identifiable {
    let id = UUID()
    @Published var date: Date
    @Published var isActive: Bool = false

    init(date: Date, isActive: Bool = false) {
        self.date = date
        self.isActive = isActive
    }
}

class AlarmData: ObservableObject {
    @Published var alarms: [Alarm] = []
}

extension DateFormatter {
    static let timeOnly: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .none
        formatter.timeStyle = .short
        return formatter
    }()
}
