//
//  ContentView.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/03.
//

import SwiftUI

struct ContentView: View {
    @State var currentIndex: Int = 0
    @State var selected : String
    
    var body: some View {
        
        ZStack {
            ScrollView{
                VStack {
                    HeaderArea()
                        .frame(height: 260)
                    NavigationContentView(selected: $selected)
                    VStack(spacing:10){
                        ButtonArea()
                        FooterArea()
                    }
                    .background(Color.BgWhite300)
                }
                .background(Color.BgWhite100)
            }
            .background(Color.BgWhite200)
            .onAppear{
                    UIScrollView.appearance().bounces = false
                }
        }.ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(selected: "월")
    }
}
