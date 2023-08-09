//
//  GetHeight.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/31.
//

import SwiftUI

//PreferenceKey: 하위 뷰에서 상위 뷰로 전달할 때 사용하는 구조체. 

struct ContentRectSize : PreferenceKey {
    static var defaultValue: CGRect = .zero //타입에 맞춰서 0 값음ㄹ 주는 것. 0이냐, 0.0이냐 등
    static func reduce(value: inout CGRect, nextValue: () -> CGRect) {}
}

struct GetHeight: ViewModifier {
    func body(content: Content) -> some View {
        content
            .background(GeometryReader {
                //$0은 0번째부터 끝까지 있는 값을 다 돈다는 뜻. $2는 2부터 돈다.
                //key: ContentRectSize.self 뜻: ContentRectSize라는 구조체한테, 값을 보낼거다. 어떤 값? value: $0.frame(in: .local) 값. 그 값의 기준은? 백그라운드 컬러의 프레임 값. $0은 첫번째 데이터 값. 디폴트값 0 대신 가져온 값을 넣음. 모델의 각각 처음 것부터 넣겠다는 의미. 0으로 정의된 defaultValue를 (원래 텅 빈 값인데 0을 주어 놓음). 여기에 값을 다 보내주는 거임.
                
                Color.clear.preference(key: ContentRectSize.self, value: $0.frame(in: .local))
                
            })
    }
}
