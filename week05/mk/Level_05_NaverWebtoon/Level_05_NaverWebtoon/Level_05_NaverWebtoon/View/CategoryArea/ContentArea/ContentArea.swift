//
//  ContentArea.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/06.
//

import SwiftUI

struct ContentArea: View {
   
    @Binding var selected : String
    
    var body: some View{
        TabView(selection: $selected){
            Monday().tag("월")
            Tuesday().tag("화")
            Wednesday().tag("수")
            Thursday().tag("목")
            Friday().tag("금")
            Saturday().tag("토")
            Sunday().tag("일")
            New().tag("신작")
            
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .frame(height:800)
    }
}

struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea(selected: .constant("월"))
    }
}
