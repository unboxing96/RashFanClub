//
//  ContentArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI



struct TuesDayContent: View {
	
	var tuesdayWebtoonList = [
		WebtoonInfo(webtoonTitle: "놓았다! 정신줄!", imageTitle: "ImgContentTue01", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "외모지하주의", imageTitle: "ImgContentTue02", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "하남자", imageTitle: "ImgContentTue03", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "광마회귀", imageTitle: "ImgContentTue04", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "절대복종", imageTitle: "ImgContentTue05", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "나혼자 쪼렙", imageTitle: "ImgContentTue06", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "개(를) 빻았다", imageTitle: "ImgContentTue07", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "선을 넘은 김래원", imageTitle: "ImgContentTue08", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "이십팔세기", imageTitle: "ImgContentTue09", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "아카데미 탈출일지", imageTitle: "ImgContentTue10", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "유쾌한 왕따", imageTitle: "ImgContentTue11", authorName:"김래원", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "세기말 풋사과 보습학원", imageTitle: "ImgContentTue12", authorName:"김래원", rateScore: "9.78"),
	]
	
	var body: some View {
		
			VStack(alignment: .leading, spacing: 15) {
						//	HStack을 임의로 1개더 생성 하기 위해, +1을 함.
						// 데이터가 1개 추가될때, 3의 배수가 아니더라도 나타나게 하기 위함
						ForEach(0..<tuesdayWebtoonList.count / 3 + 1, id: \.self ) { rowIndex in
							HStack(spacing: 6) {
								ForEach(0..<3) { columIndex in
									let item = rowIndex * 3 + columIndex
									
									//마지막 행에 추가가 안된 데이터의 값을 나타낼때 생기는 오류 방지
									if item < tuesdayWebtoonList.count {
										VStack(alignment:.leading , spacing: 5) {
											Image(tuesdayWebtoonList[item].imageTitle)
												.resizable()
												.aspectRatio(contentMode: .fill)
												.frame(width: UIScreen.main.bounds.width / 3.35)
											
											Text(tuesdayWebtoonList[item].webtoonTitle)
												.font(.system(size: 13, weight: .semibold))
												.frame(maxWidth: .infinity, alignment: .leading)
												.lineLimit(1)
												.truncationMode(.tail)
											
											HStack(spacing: 0) {
												Text(tuesdayWebtoonList[item].authorName)
													.font(.system(size: 9))

												Text("★")
													.font(.system(size: 8))
												
												Text(tuesdayWebtoonList[item].rateScore)
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

struct TuesDayContent_Previews: PreviewProvider {
	static var previews: some View {
		TuesDayContent()
	}
}
