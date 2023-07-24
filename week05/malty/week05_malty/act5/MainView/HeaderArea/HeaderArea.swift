//
//  HeaderArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/05.
//

import SwiftUI

struct HeaderArea: View {
	private let spacing: CGFloat = 10
	private let trailingSpace: CGFloat = 32
	@GestureState private var dragOffset: CGFloat = 0
	@State private var headerAreaHeight: CGRect = .zero
	@State var currentIndex: Int = 0
		
		var body: some View {
			GeometryReader { geo in
				let width = geo.size.width - (trailingSpace - spacing)
				
				ZStack(alignment: .bottomLeading) {
					ForEach(swipeProducts) { product in
						Image(product.backgroundImage)
							.resizable()
							.aspectRatio(contentMode: .fit)
							.frame(width: UIScreen.main.bounds.width)
							.opacity(getOpacity(for: product))
					}
					
					HStack(spacing: spacing) {
						ForEach(swipeProducts) { product in
							Image(product.lineBannerImage)
								.resizable()
								.scaledToFit()
								.shadow(radius: 5, x: 1, y: 1)
								.frame(width: geo.size.width - trailingSpace)
						}
					}
					.padding(.horizontal, 16)
					.offset(x: (CGFloat(currentIndex) * -width) + dragOffset)
				}
				.fixedSize()
				.modifier(GetHeightModifier())
				.gesture(
					DragGesture()
						.updating($dragOffset) { value, state, _ in
							state = value.translation.width
						}
						.onEnded { value in
							let offsetX = value.translation.width
							let progress = -offsetX / width
							let roundIndex = progress.rounded()
							currentIndex = max(min(currentIndex + Int(roundIndex), swipeProducts.count - 1), 0)
						}
				)
			}
			.frame(height: headerAreaHeight.size.height)
			.animation(.easeInOut, value: dragOffset == 0)
			.onPreferenceChange(ContentRectSize.self) { rects in
				self.headerAreaHeight = rects
			}
		}
	
	private func offset(for banner: HeaderBanner, dragOffset: CGFloat, width: CGFloat) -> CGFloat {
		//현재 보이는 배너기준 다른 배너들 - / + 처리 -> 총 8개의 index가 출력됨
		let indexOffset = CGFloat(banner.index - currentIndex)
		print("index Offset = \(indexOffset)")
		
		//각 배너별 Offset 구함 -> 총 8개의 offset이 출력됨.
		let totalOffset = indexOffset * (width - 1 * CGFloat(swipeProducts.count - 1))
		print("totalOffset = \(totalOffset)")
		
		//드래그할때 실시간 offset 변화값을 가져오기위함 -> 실시간 변화된 값으로 opacity 값 설정
		let dragOffsetClamped = max(-width, min(dragOffset, width))
		print("dragOffsetClamped = \(totalOffset + dragOffsetClamped)")
		return totalOffset + dragOffsetClamped
	}
	
	private func getOpacity(for banner: HeaderBanner) -> Double {
		//func offset에서 출력된 실시간 offset 값에서, device width 값을 나눠줌
		//opacityValue -> 각 배너별 offset 값 / device width 값을 하면, 0 / 1 / 2 .. / 7의 값이 출력됨
		let bannerOffset = offset(for: banner, dragOffset: dragOffset, width: UIScreen.main.bounds.width)
		let opacityValue = (bannerOffset / UIScreen.main.bounds.width).magnitude
		
		//출력된 opacityValue 에서 1 을 빼줘서, opcity의 값이 나오게됨.
		//0 / 1 /  2 .. / 7 에서 1 - opacityValue 는
		//1 / 0 / -1 .. /-6
		return Double(1 - opacityValue)
	}
}

struct HeaderAreaTest_Previews: PreviewProvider {
	static var previews: some View {
		HeaderArea()
	}
}
