//
//  test.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/14.
//

import SwiftUI

struct ScrollOffsetPreferenceKey: PreferenceKey {
	static var defaultValue: CGPoint = .zero
	static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {}
}

struct MainView: View {
	@State var wholeViewHeight : CGFloat
	@State var productAreaHeight : CGFloat
	@State var footerAreaHeight : CGFloat
	@State var partOfProductAreaHeight : CGFloat

	@State private var scrollPosition: CGPoint = .zero
	
	@State var bottomBtnOffsetY : Double = 200
	
	var body: some View {
		
		ZStack (alignment: .bottom) {
			
			ScrollView {
				
				VStack(spacing: 20) {
					
					VStack(spacing: 20) {
						HeaderArea()

						ContentArea()
					}
					.background(Color("ColorBgBlack"))
					
					
					VStack(spacing: 0) {
						ProductArea(partOfProductAreaHeight: $partOfProductAreaHeight)
						//ProductArea의 높이값
							.background(
								GeometryReader { geo -> Color in
									DispatchQueue.main.async {
										productAreaHeight = geo.size.height
									}
									return Color.clear
								}
							)
						
						
						FooterArea()
						//FooterArea의 높이값
							.background (
								GeometryReader { geo -> Color in
									DispatchQueue.main.async {
										footerAreaHeight = geo.size.height
									}
									return Color.clear
								}
							)
						
					}
				}
				//코드리뷰 04번 _ Chad
				.background{
					//배경색
					Color("ColorBgGray")

					GeometryReader { geo -> Color in
						DispatchQueue.main.async {
							wholeViewHeight = geo.size.height
						}
						return Color.clear
					}

					GeometryReader { geometry in
						Color.clear
							.preference(key: ScrollOffsetPreferenceKey.self, value: geometry.frame(in: .named("scroll")).origin)
					}
				}

				
				
				//preference가 바뀔때마다 ScrollOffsetPreferenceKey.self 에 들어있는 의 값을 value 에 넣는다.
				.onPreferenceChange(ScrollOffsetPreferenceKey.self) { value in
					self.scrollPosition = value
					
					if (scrollPosition.y - UIScreen.main.bounds.height) > -(wholeViewHeight - ((productAreaHeight  + footerAreaHeight) - partOfProductAreaHeight)) {
						withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)) {
							bottomBtnOffsetY = -70
						}
					}  else {
						withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)) {
							bottomBtnOffsetY = 200
						}
					}
				}
				
			} //scrollView end
			//백그라운드 색 정해주기
			.background(
				scrollPosition.y > -wholeViewHeight/2 ? Color.black : Color("ColorBgGray")
			)
			.ignoresSafeArea()
			

			BottomButtonView()
				.padding(.horizontal, 16)
				.offset(x: 0, y: bottomBtnOffsetY)

		}//ZStack end
		.ignoresSafeArea()
		
		//view가 나타날때, isBottomBtnVisible 값을 true 처리 및 offset 값 -70으로 설정
		.onAppear {
			DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
				withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5)) {
					bottomBtnOffsetY = -70
				}
			}
		}
		
		
	}
}

struct ContentView_Previews: PreviewProvider {
	static var previews: some View {
		MainView(wholeViewHeight: 30, productAreaHeight: 30, footerAreaHeight: 30, partOfProductAreaHeight: 30)
	}
}
