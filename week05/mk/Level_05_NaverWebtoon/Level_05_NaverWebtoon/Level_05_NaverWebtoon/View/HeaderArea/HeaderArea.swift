//
//  HeaderArea.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/06.
//

import SwiftUI

struct HeaderArea: View {
    private let spacing: CGFloat = 10
    private let trailingSpace: CGFloat = 32
    @GestureState var dragOffset : CGFloat = 0
    @State private var headerAreaHeight: CGRect = .zero
    @State private var currentIndex : Int = 0
    
    var body: some View {
        GeometryReader { geo in
            let width = geo.size.width - (trailingSpace - spacing)
            
            ZStack(alignment: .bottomLeading){
                ForEach(imageBanners) { banner in
                    Image(banner.imageTitles)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width)
                    //각각의 데이터값을 getOpacity에 보내줍니다. (for:banner)
                        .opacity(getOpacity(for: banner, draOffset: dragOffset, width: UIScreen.main.bounds.width))
                }
                
                HStack(spacing: spacing){
                    ForEach(imageLineBanners) {lineBanner in
                        Image(lineBanner.imageTitles)
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: 10, x: 0, y: 2)
                            .frame(width: geo.size.width - trailingSpace)
                    }
                }
                .padding(.horizontal, 16)
                .offset(x: (CGFloat(currentIndex) * -width) + dragOffset)
            }
            //fixedSize는 GeometryReader을 사용할 때 필수입니다. 만든 ZStack의 절대적 사이즈를 구현시켜줍니다.
            .fixedSize()
            .modifier(GetHeight())
            .gesture(
                DragGesture()
                    .updating($dragOffset) { value, state, _ in
                        //translation: 한 틱 움직일때마다의 값을 가져옵니다.(10 움직이면 값이 10번 바뀝니다)
                        //(10움직이면 값이 10번 바뀜)
                        //손 때면 dragOffset이 0이 됨!
                        state = value.translation.width
                    }
                    .onEnded ({ value in
                        let offsetX = value.translation.width
                        let process = -offsetX / width
                        let roundIndex  = process.rounded()
                        //currentIndex가 0-7까지만 되도록 막아줌. max -> 0, min -> 7
                        currentIndex = max(min(currentIndex + Int(roundIndex), imageLineBanners.count - 1), 0)
                    }
              )
            )
        }
        .frame(height: headerAreaHeight.size.height)
        .animation(.easeInOut, value: dragOffset  == 0)
        //(ContentRectSize.self가 바뀌면 온프리퍼렌스 체인지 실행, 겟 하이트 모디파이어 실행되면 높이 구해서 컨텐트렉ㅡ사이즈가 업데이트되고, 그러면 온프리퍼런스사이즈 실행, 렉트사이즈 를 헤더레이아하이트에 넣고, 이걸 지스텍 프레임의 .frame(height: headerAreHeight.size.height)
        .onPreferenceChange(ContentRectSize.self) {rects in
            self.headerAreaHeight = rects
        }
    }
    private func getOpacity(for banner: ImageTitles, draOffset: CGFloat, width: CGFloat) -> CGFloat {
        //
        let getEachBannerDisplayIndex = CGFloat(banner.index - currentIndex)
        
        let bannerOffset = getEachBannerDisplayIndex * width
        
        let bannerDragOffset = bannerOffset + draOffset
        
        let getOpacity = (bannerDragOffset/UIScreen.main.bounds.width).magnitude
        
        return Double(1 - getOpacity)
    }
}


struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
