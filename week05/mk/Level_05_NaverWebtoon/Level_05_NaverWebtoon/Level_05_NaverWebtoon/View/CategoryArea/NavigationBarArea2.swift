//
//  NavigationBarArea2.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/16.
//

import SwiftUI

struct NavigationBarArea2: View {
  
    @Binding var selected : String
    @Namespace var nameSpace
    var categories=["월", "화", "수", "목", "금", "토", "일", "신작"]
    
    var body: some View {
        ScrollView{
            VStack{
                HStack(spacing:0){
                    ForEach(categories, id:\.self){category in
                        Text(category)
                            .font(Font.pretendard(size: 14, selected == category ? .bold : .medium))
                            .foregroundColor(selected == category ? Color.FontGreen :  Color.FontBlack)
                            .padding(.horizontal, category == categories.last ? 0 : 4.5)
                            .padding(.bottom, 12)
                            .overlay(alignment:.bottom){
                                if selected == category{
                                    activeStroke()
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
            }
        }
    }
    private func activeStroke() -> some View {
        Rectangle().frame(height: 2)
            .foregroundColor(Color.FontGreen)
            .matchedGeometryEffect(id: "activeStroke", in: nameSpace)
    }
}

//struct NavigationBarArea2_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationBarArea2(selected: "월")
//    }
//}
