//
//  ContentArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct SaturdayContent: View {
	
	var saturdayWebtoonList = [
		WebtoonInfo(webtoonTitle: "잪집에는 로꼬 살고있다", imageTitle: "ImgContentSat01", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "알고 일기", imageTitle: "ImgContentSat02", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "페페를 죽여줘요", imageTitle: "ImgContentSat03", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "알고머신", imageTitle: "ImgContentSat04", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "촉법소년", imageTitle: "ImgContentSat05", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "재벌집 막내아들", imageTitle: "ImgContentSat06", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "수학을 삼킨 너에게", imageTitle: "ImgContentSat07", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "뮤즈 온 유명", imageTitle: "ImgContentSat08", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "코딩 테스트", imageTitle: "ImgContentSat09", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "가족같은 XX", imageTitle: "ImgContentSat10", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "순수한 동거생활", imageTitle: "ImgContentSat11", authorName:"로꼬", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "나 혼자 네크로맨서", imageTitle: "ImgContentSat12", authorName:"로꼬", rateScore: "9.78"),
	]
	
	var body: some View {
		
			VStack(alignment: .leading, spacing: 15) {
						//	HStack을 임의로 1개더 생성 하기 위해, +1을 함.
						// 데이터가 1개 추가될때, 3의 배수가 아니더라도 나타나게 하기 위함
						ForEach(0..<saturdayWebtoonList.count / 3 + 1, id: \.self ) { rowIndex in
							HStack(spacing: 6) {
								ForEach(0..<3) { columIndex in
									let item = rowIndex * 3 + columIndex
									
									//마지막 행에 추가가 안된 데이터의 값을 나타낼때 생기는 오류 방지
									if item < saturdayWebtoonList.count {
										VStack(alignment:.leading , spacing: 5) {
											Image(saturdayWebtoonList[item].imageTitle)
												.resizable()
												.aspectRatio(contentMode: .fill)
												.frame(width: UIScreen.main.bounds.width / 3.35)
											
											Text(saturdayWebtoonList[item].webtoonTitle)
												.font(.system(size: 13, weight: .semibold))
												.frame(maxWidth: .infinity, alignment: .leading)
												.lineLimit(1)
												.truncationMode(.tail)
											
											HStack(spacing: 0) {
												Text(saturdayWebtoonList[item].authorName)
													.font(.system(size: 9))

												Text("★")
													.font(.system(size: 8))
												
												Text(saturdayWebtoonList[item].rateScore)
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

struct SaturdayContent_Previews: PreviewProvider {
	static var previews: some View {
		SaturdayContent()
	}
}
