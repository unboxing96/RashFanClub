//
//  ContentArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct SundayContent: View {
	
	var sundayWebtoonList = [
		WebtoonInfo(webtoonTitle: "김다빈형님", imageTitle: "ImgContentSun01", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "숙제 안해오면 몽둥이", imageTitle: "ImgContentSun02", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "김다빈, 전설이 되다", imageTitle: "ImgContentSun03", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "나랑 Xcode 할래?", imageTitle: "ImgContentSun04", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "세레나", imageTitle: "ImgContentSun05", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "프리드로우", imageTitle: "ImgContentSun06", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "흑화한 김다빈는 무섭다", imageTitle: "ImgContentSun07", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "망나니 소교주로 환생했다", imageTitle: "ImgContentSun08", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "작전명 순정", imageTitle: "ImgContentSun09", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "마도 전생기", imageTitle: "ImgContentSun10", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "대충 해도 코딩잘함", imageTitle: "ImgContentSun11", authorName:"김다빈", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "나를 바꿔줘", imageTitle: "ImgContentSun12", authorName:"김다빈", rateScore: "9.78"),
	]
	
	var body: some View {
		
			VStack(alignment: .leading, spacing: 15) {
						//	HStack을 임의로 1개더 생성 하기 위해, +1을 함.
						// 데이터가 1개 추가될때, 3의 배수가 아니더라도 나타나게 하기 위함
						ForEach(0..<sundayWebtoonList.count / 3 + 1, id: \.self ) { rowIndex in
							HStack(spacing: 6) {
								ForEach(0..<3) { columIndex in
									let item = rowIndex * 3 + columIndex
									
									//마지막 행에 추가가 안된 데이터의 값을 나타낼때 생기는 오류 방지
									if item < sundayWebtoonList.count {
										VStack(alignment:.leading , spacing: 5) {
											Image(sundayWebtoonList[item].imageTitle)
												.resizable()
												.aspectRatio(contentMode: .fill)
												.frame(width: UIScreen.main.bounds.width / 3.35)
											
											Text(sundayWebtoonList[item].webtoonTitle)
												.font(.system(size: 13, weight: .semibold))
												.frame(maxWidth: .infinity, alignment: .leading)
												.lineLimit(1)
												.truncationMode(.tail)
											
											HStack(spacing: 0) {
												Text(sundayWebtoonList[item].authorName)
													.font(.system(size: 9))

												Text("★")
													.font(.system(size: 8))
												
												Text(sundayWebtoonList[item].rateScore)
													.font(.system(size: 10))
											}
											.foregroundColor(Color.FontGray100)
											.frame(maxWidth: .infinity, alignment: .leading)
										}
									}
								}
							}
						}
					}
					.padding(.horizontal, 15)
					.ignoresSafeArea()
					.background(Color.BgWhite100)
	}
}

struct SundayContent_Previews: PreviewProvider {
	static var previews: some View {
		SundayContent()
	}
}
