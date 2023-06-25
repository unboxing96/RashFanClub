//
//  MainView.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView {
            MainArea()
            ContentArea()
            ProductArea()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
