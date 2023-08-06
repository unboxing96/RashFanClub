//
//  NavigationBarArea.swift
//  week05
//
//  Created by kimpepe on 2023/08/06.
//

import SwiftUI

import SwiftUI

struct NavigationBarArea: View {
    @State var height: CGFloat = 0
    @Binding var selectedCategory: String
    @Namespace var namespace

    var categories = ["월", "화", "수", "목", "금", "토", "일", "신작"]

    var body: some View {
        ScrollView {
            VStack(spacing: 6) {
                categoryList
                    .padding(.horizontal, 15)
            }
            .background(Color.BgWhite100)
        }
    }
    
    // 완성된 categoryButton을 ForEach로 반복하는 부분
    private var categoryList: some View {
        HStack(spacing: 0) {
            ForEach(categories, id: \.self) { category in
                categoryButton(for: category)
                if category != categories.last {
                    Spacer()
                }
            }
        }
    }
    
    // categoryButton 꾸며줌 + activeStroke()의 위치를 결정 + 애니메이션 효과
    private func categoryButton(for category: String) -> some View {
        Text(category)
            .padding(.vertical, 12)
            .padding(.horizontal, 4.5)
            .font(.system(size: 14, weight: selectedCategory == category ? .bold : .medium))
            .foregroundColor(selectedCategory == category ? Color.FontGreen : Color.FontBlack)
            .overlay(alignment: .bottom) {
                if selectedCategory == category {
                    activeStroke()
                }
            }
            .onTapGesture {
                withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8)) {
                    selectedCategory = category
                }
            }
    }

    // activeStroke 꾸며줌.
    private func activeStroke() -> some View {
        Rectangle().frame(height: 2)
            .foregroundColor(Color.FontGreen)
            .matchedGeometryEffect(id: "activeStroke", in: namespace)
    }
}

struct NavigationBarArea_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarArea(selectedCategory: .constant("월"))
    }
}
