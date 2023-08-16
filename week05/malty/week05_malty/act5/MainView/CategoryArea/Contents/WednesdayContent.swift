//
//  ContentArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct WednesdayContent: View {
	
	var wednesdayWebtoonList = [
		WebtoonInfo(webtoonTitle: "근육귀환", imageTitle: "ImgContentWed01", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "성스러운 헬창생활", imageTitle: "ImgContentWed02", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "전지적 채드기준", imageTitle: "ImgContentWed03", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "근육연애", imageTitle: "ImgContentWed04", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "내가 키운 근육들", imageTitle: "ImgContentWed05", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "시한부 만들뻔 했어요!", imageTitle: "ImgContentWed06", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "근육을 훔친이는 누구인가", imageTitle: "ImgContentWed07", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "백세트", imageTitle: "ImgContentWed08", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "내가 운동을 결심한 것은", imageTitle: "ImgContentWed09", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "맞짱깔래?", imageTitle: "ImgContentWed10", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "66666년 만에 환생한 흑마법사", imageTitle: "ImgContentWed11", authorName:"머슬러닝", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "헬창2", imageTitle: "ImgContentWed12", authorName:"머슬러닝", rateScore: "9.78"),
	]
	
	var body: some View {
		
			VStack(alignment: .leading, spacing: 15) {
						//	HStack을 임의로 1개더 생성 하기 위해, +1을 함.
						// 데이터가 1개 추가될때, 3의 배수가 아니더라도 나타나게 하기 위함
						ForEach(0..<wednesdayWebtoonList.count / 3 + 1, id: \.self ) { rowIndex in
							HStack(spacing: 6) {
								ForEach(0..<3) { columIndex in
									let item = rowIndex * 3 + columIndex
									
									//마지막 행에 추가가 안된 데이터의 값을 나타낼때 생기는 오류 방지
									if item < wednesdayWebtoonList.count {
										VStack(alignment:.leading , spacing: 5) {
											Image(wednesdayWebtoonList[item].imageTitle)
												.resizable()
												.aspectRatio(contentMode: .fill)
												.frame(width: UIScreen.main.bounds.width / 3.35)
											
											Text(wednesdayWebtoonList[item].webtoonTitle)
												.font(.system(size: 13, weight: .semibold))
												.frame(maxWidth: .infinity, alignment: .leading)
												.lineLimit(1)
												.truncationMode(.tail)
											
											HStack(spacing: 0) {
												Text(wednesdayWebtoonList[item].authorName)
													.font(.system(size: 9))

												Text("★")
													.font(.system(size: 8))
												
												Text(wednesdayWebtoonList[item].rateScore)
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

struct WednesdayContent_Previews: PreviewProvider {
	static var previews: some View {
		WednesdayContent()
	}
}
