//
//  HeaderArea.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/05.
//

import SwiftUI
// 구현계획 Hstack 카로셀뷰에 overlay
struct HeaderArea: View {
    let spacing: CGFloat = 10
    @GestureState var dragOffset: CGFloat = 0
    @State var currentIndex: Int = 0
    var emptySpace: CGFloat = 32
    
    
    private var Images: [String] = [nicknmae.mK.banner, nicknmae.pepe.banner, nicknmae.chad.banner, nicknmae.seez.banner, nicknmae.jay.banner, nicknmae.royce.banner, nicknmae.rash.banner, nicknmae.bullmang.banner]
    private var currentBanner: [String] = [nicknmae.mK.lineBanner, nicknmae.pepe.lineBanner, nicknmae.chad.lineBanner, nicknmae.seez.lineBanner, nicknmae.jay.lineBanner, nicknmae.royce.lineBanner, nicknmae.rash.lineBanner, nicknmae.bullmang.lineBanner]
    
    var body: some View {
        GeometryReader { proxy in
            let width = proxy.size.width - (emptySpace - spacing)
            let side = (emptySpace/2) 
            ZStack(alignment: .bottomLeading) {
                ForEach(Images.indices, id: \.self) { index in
                    Image(Images[index])
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .opacity(currentIndex == index ? 1 : 0)
                        .animation(.default)
                }
                HStack(spacing: spacing) {
                    ForEach(currentBanner.indices, id: \.self) { index in
                        Image(currentBanner[index])
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: 3)
                            .frame(width: proxy.size.width - emptySpace)
                    }
                }
                .offset(x: (CGFloat(currentIndex) * -width) + (currentIndex != 0 ? side : 16) + dragOffset)
                .gesture(
                    DragGesture()
                        .updating($dragOffset,body: { value, out, _ in
                            out = value.translation.width
                        })
                        .onEnded { value in
                            let offsetX = value.translation.width
                            let progress = -offsetX / width
                            let roundIndex = progress.rounded()
                            
                            
                            currentIndex = max(min(currentIndex + Int(roundIndex), currentBanner.count - 1), 0)
                        }
                )
            }
        }
        .frame(width: 393,height: 250)
    }
    
}
struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}

