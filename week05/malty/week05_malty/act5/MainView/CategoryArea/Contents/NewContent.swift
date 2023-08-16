//
//  ContentArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct NewContent: View {
	
	var newWebtoonList = [
		WebtoonInfo(webtoonTitle: "신혼일기", imageTitle: "ImgContentNew01", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "싸움못함", imageTitle: "ImgContentNew02", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "퇴학용병", imageTitle: "ImgContentNew03", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "약한하명관", imageTitle: "ImgContentNew04", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "치매전쟁", imageTitle: "ImgContentNew05", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "투신 잔챙이", imageTitle: "ImgContentNew06", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "사형하명관", imageTitle: "ImgContentNew07", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "일타강사 하사부", imageTitle: "ImgContentNew08", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "소녀재판", imageTitle: "ImgContentNew09", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "무직백수 하 명 관", imageTitle: "ImgContentNew10", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "사랑받는 시집살이", imageTitle: "ImgContentNew11", authorName:"하명관", rateScore: "9.78"),
		WebtoonInfo(webtoonTitle: "고백 받을 수 있긴 하나?", imageTitle: "ImgContentNew12", authorName:"하명관", rateScore: "9.78"),
	]
	
	var body: some View {
		
			VStack(alignment: .leading, spacing: 15) {
						//	HStack을 임의로 1개더 생성 하기 위해, +1을 함.
						// 데이터가 1개 추가될때, 3의 배수가 아니더라도 나타나게 하기 위함
						ForEach(0..<newWebtoonList.count / 3 + 1, id: \.self ) { rowIndex in
							HStack(spacing: 6) {
								ForEach(0..<3) { columIndex in
									let item = rowIndex * 3 + columIndex
									
									//마지막 행에 추가가 안된 데이터의 값을 나타낼때 생기는 오류 방지
									if item < newWebtoonList.count {
										VStack(alignment:.leading , spacing: 5) {
											Image(newWebtoonList[item].imageTitle)
												.resizable()
												.aspectRatio(contentMode: .fill)
												.frame(width: UIScreen.main.bounds.width / 3.35)
											
											Text(newWebtoonList[item].webtoonTitle)
												.font(.system(size: 13, weight: .semibold))
												.frame(maxWidth: .infinity, alignment: .leading)
												.lineLimit(1)
												.truncationMode(.tail)
											
											HStack(spacing: 0) {
												Text(newWebtoonList[item].authorName)
													.font(.system(size: 9))

												Text("★")
													.font(.system(size: 8))
												
												Text(newWebtoonList[item].rateScore)
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

struct NewContent_Previews: PreviewProvider {
	static var previews: some View {
		NewContent()
	}
}
