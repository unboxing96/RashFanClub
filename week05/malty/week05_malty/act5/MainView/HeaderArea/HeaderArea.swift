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
							.opacity(getOpactiy(for: product, dragOffset: dragOffset, width: UIScreen.main.bounds.width))
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
	
	private func getOpactiy(for banner: HeaderBanner, dragOffset: CGFloat, width: CGFloat) -> CGFloat {

		let getEachBannerDisplayIndex = CGFloat(banner.index - currentIndex)
		
		let bannerOffset = getEachBannerDisplayIndex * width
		
		let bannerDragOffset = bannerOffset + dragOffset
		
		let getOpactiy = (bannerDragOffset/UIScreen.main.bounds.width).magnitude

		return Double(1 - getOpactiy)
	}
}

struct HeaderAreaTest_Previews: PreviewProvider {
	static var previews: some View {
		HeaderArea()
	}
}
