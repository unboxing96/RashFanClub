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
            MondayView().tag("월")
            TuesdayView().tag("화")
            WednesdayView().tag("수")
            ThursdayView().tag("목")
            FridayView().tag("금")
            SaturdayView().tag("토")
            SundayView().tag("일")
            NewView().tag("신작")
            
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
