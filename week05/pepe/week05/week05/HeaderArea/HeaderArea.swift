//
//  HeaderArea.swift
//  week05
//
//  Created by kimpepe on 2023/08/06.
//

import Foundation
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

                // 말 선생님 코드
//    private func getOpacity(for banner: HeaderBanner, dragOffset: CGFloat, width: CGFloat) -> CGFloat {
//
//        let getEachBannerDisplayIndex = CGFloat(banner.Index - currentIndex)
//
//        let bannerOffset = getEachBannerDisplayIndex * width
//
//        let bannerDragOffset = bannerOffset + dragOffset
//
//        let getOpacity = (bannerDragOffset/UIScreen.main.bounds.width).magnitude
//
//        return Double(1 - getOpacity)
//    }
    
    // 리팩토링 한 코드
    private func getOpacity(for banner: HeaderBanner) -> CGFloat {
        let distanceFromCurrent = CGFloat(banner.Index - currentIndex) // 현재 배너: 0, 다음 배너: 1, 그 다음 배너: 2, ...
        let normalizedOffset = dragOffset / UIScreen.main.bounds.width // -1 <= normalizedOffset <= 1
        let resultOffset = distanceFromCurrent + normalizedOffset //
        return 1 - abs(resultOffset)
    }

}

struct HeaderAreaTest_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
