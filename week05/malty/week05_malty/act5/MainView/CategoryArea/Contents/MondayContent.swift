//
//  ContentArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct MondayContent: View {
	
	var mondayWebtoonList = [
		WebtoonInfo(webtoonTitle: "그냥 선생님", imageTitle: "ImgContentMon01", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "멸망급 ADA의 선생님", imageTitle: "ImgContentMon02", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "엠케이가 간다!", imageTitle: "ImgContentMon03", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "아이들의 엠선생님", imageTitle: "ImgContentMon04", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "엠케이의 교실", imageTitle: "ImgContentMon05", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "공부의 결과", imageTitle: "ImgContentMon06", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "공부를 뇌에서 뽑으면", imageTitle: "ImgContentMon07", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "공부하기 좋은 날", imageTitle: "ImgContentMon08", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "초월자 학원의 수강생이 되었다.", imageTitle: "ImgContentMon09", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "애플까지 걸어서 1분", imageTitle: "ImgContentMon10", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "스터디 그룹", imageTitle: "ImgContentMon11", authorName:"엠케이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "지금 우리 학교는", imageTitle: "ImgContentMon12", authorName:"엠케이", rateScore: "9.99"),
	]
	
	var body: some View {
		
			VStack(alignment: .leading, spacing: 15) {
						//	HStack을 임의로 1개더 생성 하기 위해, +1을 함.
						// 데이터가 1개 추가될때, 3의 배수가 아니더라도 나타나게 하기 위함
						ForEach(0..<mondayWebtoonList.count / 3 + 1, id: \.self ) { rowIndex in
							HStack(spacing: 6) {
								ForEach(0..<3) { columIndex in
									let item = rowIndex * 3 + columIndex
									
									//마지막 행에 추가가 안된 데이터의 값을 나타낼때 생기는 오류 방지
									if item < mondayWebtoonList.count {
										VStack(alignment:.leading , spacing: 5) {
											Image(mondayWebtoonList[item].imageTitle)
												.resizable()
												.aspectRatio(contentMode: .fill)
												.frame(width: UIScreen.main.bounds.width / 3.35)
											
											Text(mondayWebtoonList[item].webtoonTitle)
												.font(.system(size: 13, weight: .semibold))
												.frame(maxWidth: .infinity, alignment: .leading)
												.lineLimit(1)
												.truncationMode(.tail)
											
											HStack(spacing: 0) {
												Text(mondayWebtoonList[item].authorName)
													.font(.system(size: 9))

												Text("★")
													.font(.system(size: 8))
												
												Text(mondayWebtoonList[item].rateScore)
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



struct MondayContent_Previews: PreviewProvider {
	static var previews: some View {
		MondayContent()
	}
}
