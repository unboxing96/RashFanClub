//
//  ContentArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct ThursdayContent: View {
	
	var thursdayWebtoonList = [
		WebtoonInfo(webtoonTitle: "시대장", imageTitle: "ImgContentThu01", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "마루는 강쥐", imageTitle: "ImgContentThu02", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "하루만 시즈가 되고싶어", imageTitle: "ImgContentThu03", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "유사연애", imageTitle: "ImgContentThu04", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "내가 짜온 개발코드", imageTitle: "ImgContentThu05", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "시한부인 줄 알았어요!", imageTitle: "ImgContentThu06", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "사신소년", imageTitle: "ImgContentThu07", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "대학원 탈출일지", imageTitle: "ImgContentThu08", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "한림 체육관", imageTitle: "ImgContentThu09", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "멸망 이후의 세계", imageTitle: "ImgContentThu10", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "올가미", imageTitle: "ImgContentThu11", authorName:"김시즈", rateScore: "9.83"),
		WebtoonInfo(webtoonTitle: "하북팽가 막내아들", imageTitle: "ImgContentThu12", authorName:"김시즈", rateScore: "9.83"),
	]
	
	var body: some View {
		
			VStack(alignment: .leading, spacing: 15) {
						//	HStack을 임의로 1개더 생성 하기 위해, +1을 함.
						// 데이터가 1개 추가될때, 3의 배수가 아니더라도 나타나게 하기 위함
						ForEach(0..<thursdayWebtoonList.count / 3 + 1, id: \.self ) { rowIndex in
							HStack(spacing: 6) {
								ForEach(0..<3) { columIndex in
									let item = rowIndex * 3 + columIndex
									
									//마지막 행에 추가가 안된 데이터의 값을 나타낼때 생기는 오류 방지
									if item < thursdayWebtoonList.count {
										VStack(alignment:.leading , spacing: 5) {
											Image(thursdayWebtoonList[item].imageTitle)
												.resizable()
												.aspectRatio(contentMode: .fill)
												.frame(width: UIScreen.main.bounds.width / 3.35)
											
											Text(thursdayWebtoonList[item].webtoonTitle)
												.font(.system(size: 13, weight: .semibold))
												.frame(maxWidth: .infinity, alignment: .leading)
												.lineLimit(1)
												.truncationMode(.tail)
											
											HStack(spacing: 0) {
												Text(thursdayWebtoonList[item].authorName)
													.font(.system(size: 9))

												Text("★")
													.font(.system(size: 8))
												
												Text(thursdayWebtoonList[item].rateScore)
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

struct thursdayContent_Previews: PreviewProvider {
	static var previews: some View {
		ThursdayContent()
	}
}
