//
//  ContentView.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/03.
//

import SwiftUI

struct MainView: View {
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
                    .background(Color.bgWhite300)
                }
                .background(Color.bgWhite100)
            }
            .background(Color.bgWhite200)
            .onAppear{
                    UIScrollView.appearance().bounces = false
                }
        }.ignoresSafeArea()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(selected: "월")
    }
}
