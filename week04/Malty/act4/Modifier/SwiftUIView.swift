//
//  SwiftUIView.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/25.
//

import SwiftUI

//View의 크기를 알기위해 사용하는 변수
struct sizePreferenceKey: PreferenceKey{
	static var defaultValue: CGSize = .zero
	static func reduce(value: inout CGSize, nextValue: () -> CGSize) {}
}
	//사용하는 메인뷰의 높이를 구하기위해 사용하는 변수
struct SwiftUiView :  View {

	@State var heigtVStackMain : CGFloat = 0
	
	var body: some View {
		//내가 구할려고하는 view를 감싸는 GeometryReader 를 선언을 해준다.
		GeometryReader{ g in
			VStack(spacing : 0) {
				Image("1")
					.resizable()
					.frame(width: UIScreen.main.bounds.width, height: 500)
				Image("1")
					.resizable()
					.frame(width: UIScreen.main.bounds.width, height: 500)
				Image("1")
					.resizable()
					.frame(width: UIScreen.main.bounds.width, height: 500)
			}
			.background (
				//SwiftUI 에서는 각 뷰의 크기를 구하는것이 함수화 되어있지않다 그래서 살짝 꼼수를 사용해야하는데
				//내가 상단으로 인지하고싶은 부분에 투명한 색상의 배경을 하나 선언을 해주고
				//선언한 투명한 배경의 크기를 구한다.
				
				
				//그때 필요한것이 바로 sizePreferenceKey
				GeometryReader { proxy in
					Color.clear
						.preference(key: sizePreferenceKey.self, value: proxy.size)
				}
			)
			//SizePreferenceKey.self 값이 변경될때마다 실행되는 트리거를 실행하고
			//이렇게 구한 화면의 크기를 heigtVStackMain 변수에 넣어준다.
			.onPreferenceChange(sizePreferenceKey.self){ newSize in
				self.heigtVStackMain = newSize.height
				print("높이 :  \(self.heigtVStackMain)")
			}
		}
		
	}
	}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
		SwiftUiView()
    }
}
