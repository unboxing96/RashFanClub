//
//  act4App.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/13.
//

import SwiftUI

@main
struct act4App: App {
    var body: some Scene {
        WindowGroup {
			MainView(wholeViewHeight: 30, productAreaHeight: 30, footerAreaHeight: 30, partOfProductAreaHeight: 30)
			
//			MainTestView(wholeViewHeight: 30, eAreaHeight: 30, partOfDAreaHeight: 30)
        }
    }
}
