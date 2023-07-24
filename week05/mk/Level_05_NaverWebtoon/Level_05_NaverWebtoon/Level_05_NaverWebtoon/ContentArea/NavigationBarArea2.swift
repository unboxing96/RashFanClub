//
//  NavigationBarArea2.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/16.
//

import SwiftUI

struct NavigationBarArea2: View {
  
    @Binding var selected : String
    var categories=[
        "월", "화", "수", "목", "금", "토", "일", "신작"
    ]
    @Namespace var nameSpace
    
    var body: some View {
        
        ScrollView{
            VStack{
                HStack(spacing:0){
                    ForEach(categories, id:\.self){category in
                        Text(category)
                            .font(.system(size: 14, weight: selected == category ? .bold : .medium))
                            .foregroundColor(selected == category ? Color.fontGreen :  Color.fontBlack)
                            .padding(.horizontal, category == categories.last ? 0 : 4.5)
                            .padding(.bottom, 12)
                            .overlay(alignment:.bottom){
                                if selected == category{
                                    Rectangle()
                                        .frame(height: 2)
                                        .foregroundColor(Color.fontGreen)
                                        .matchedGeometryEffect(id: "activeStroke", in: nameSpace)
                                    //id는 어떤 걸 적어도 상관없음
                                    //지오메트리이팩트: 기하학적으로 역동적 효과 줌
                                    //id는 적용시킬 것들을 묶어줌. 월화수목~~을 연결해주는 것.위치값등을 Namespace에 저장함
                                }
                            }
                            .onTapGesture {
                                withAnimation(.interactiveSpring(response:0.5, dampingFraction: 0.8)){
                                    selected = category
                                }
                            }
                        if category != categories.last {
                            Spacer()
                        }
                    }
                }
                .padding(.horizontal, 15)
//                TabView(selection: $selected){
//                    MondayView().tag("월")
//                    TuesdayView().tag("화")
//                    WednesdayView().tag("수")
//                    ThursdayView().tag("목")
//                    FridayView().tag("금")
//                    SaturdayView().tag("토")
//                    SundayView().tag("일")
//                    NewView().tag("신작")
//
//                }
//                .tabViewStyle(.page(indexDisplayMode: .never))
//                .frame(height:800)
            }
        }
    }
}

//struct NavigationBarArea2_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBarArea2(selected: "월")
//    }
//}
