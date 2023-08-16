//
//  NavigationBarArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct NavigationBarArea: View {
	@State var height: CGFloat = 0
	@Binding var selectedCategory :String
	@Namespace var namespace
		
	var categories = ["월", "화", "수", "목", "금", "토", "일", "신작"]
	
	var body: some View {
			ScrollView {
				VStack(spacing: 6){
					HStack(spacing: 0){
						ForEach(categories, id:\.self) { category in
							Text(category)
								.padding(.vertical, 12)
								.padding(.horizontal, 4.5)
								.font(.system(size:14, weight: selectedCategory == category ? .bold : .medium))
								.foregroundColor(selectedCategory == category ? Color.FontGreen : Color.FontBlack)
								.overlay(alignment:.bottom){
									if selectedCategory == category {
										activeStroke()
									}
								}
								// 클릭 시, 애니메이션 / seleted 변수에 값 넣어주기
								.onTapGesture {
									withAnimation(.interactiveSpring(response: 0.5, dampingFraction: 0.8)){
										selectedCategory = category
									}
									
								}
							// 월~신작 사이에 Spacer()주기 -> "신작" 우측은 제외
 							if category != categories.last{
								Spacer()
							}
						}
					}
					.padding(.horizontal, 15)
				}
				.background(Color.BgWhite100)
			}
		}
	
	private func activeStroke() -> some View {
		Rectangle().frame(height: 2)
			.foregroundColor(Color.FontGreen)
			.matchedGeometryEffect(id: "activeStroke", in: namespace)
	}
	
}

struct NavigationBarArea_Previews: PreviewProvider {
    static var previews: some View {
		NavigationBarArea(selectedCategory : .constant("월"))
    }
}
