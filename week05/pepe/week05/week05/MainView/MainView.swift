//
//  MainView.swift
//  week05
//
//  Created by kimpepe on 2023/07/07.
//

import SwiftUI

struct MainView: View {
    
    @State var selectedCategory: String = "월"
    
    var body: some View {
        
        ScrollView(){
            VStack(spacing: 10) {
                VStack(spacing: 0) {
                    HeaderArea()
                    CategoryArea()
                }
                .background(Color.BgWhite100)
                ButtonArea()
                FooterArea()
            }
            .background(Color.BgWhite300)
        }
        .ignoresSafeArea()
        .onAppear {
            UIScrollView.appearance().bounces = false
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
