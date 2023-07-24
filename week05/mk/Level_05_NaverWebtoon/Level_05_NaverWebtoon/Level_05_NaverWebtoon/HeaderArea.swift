//
//  HeaderArea.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/06.
//

import SwiftUI

struct HeaderArea: View {
    @State var imageBannerIndex : Int = 0
    @GestureState var offset : CGFloat = 0
    @State private var currentIndex : Int = 0
    
    var body: some View {
        GeometryReader { geo in
            let width = geo.size.width
                ZStack(alignment: .bottomLeading){
                    
                    ForEach(imageBanners.reversed()){index in
                            Image(index.imageTitles)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width:geo.size.width)
//                                .opacity(index = currentIndex ? 1 : 0)
                        }
                    HStack(spacing: 10){
                        ForEach(0..<8){index in
                            Image(imageLineBanners[index].imageTitles)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: width - 32 )
                                .padding(.top, 10)
                                .offset(x: (CGFloat(currentIndex) * -width) + 16 + offset)
                        }
                    }
                }.padding(.bottom, 10)
                .gesture(
                    DragGesture()
                        .updating($offset, body: { value, out, _ in
                            out = value.translation.width
                        })
                        .onEnded ({ value in
                            print(value)
                            let offsetX = value.translation.width
                            let process = -offsetX / width
                            let roundIndex  = process.rounded()
                            currentIndex = max(min(currentIndex + Int(roundIndex), imageLineBanners.count - 1), 0)
                        })
                )
        }
    }
}

struct HeaderArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
