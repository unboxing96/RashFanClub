//
//  ContentArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct FridayContent: View {
	
	var fridayWebtoonList = [
		WebtoonInfo(webtoonTitle: "버림받은 왕녀의 은밀한 침실", imageTitle: "ImgContentFri01", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "제이의 세계", imageTitle: "ImgContentFri02", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "백수세끼", imageTitle: "ImgContentFri03", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "뷰티풀 군바리", imageTitle: "ImgContentFri04", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "알고지상주의", imageTitle: "ImgContentFri05", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "물어보는 사이", imageTitle: "ImgContentFri06", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "개발신의탑", imageTitle: "ImgContentFri07", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "똑닮은딸", imageTitle: "ImgContentFri08", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "윈드 브레이커", imageTitle: "ImgContentFri09", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "장씨세가 호위무사", imageTitle: "ImgContentFri10", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "순정말고 순종", imageTitle: "ImgContentFri11", authorName:"꽃사슴보이", rateScore: "9.99"),
		WebtoonInfo(webtoonTitle: "신화급 귀속 아이템을 손에 넣었다", imageTitle: "ImgContentFri12", authorName:"꽃사슴보이", rateScore: "9.99"),
	]
	
	var body: some View {
		
			VStack(alignment: .leading, spacing: 15) {
						//	HStack을 임의로 1개더 생성 하기 위해, +1을 함.
						// 데이터가 1개 추가될때, 3의 배수가 아니더라도 나타나게 하기 위함
						ForEach(0..<fridayWebtoonList.count / 3 + 1, id: \.self ) { rowIndex in
							HStack(spacing: 6) {
								ForEach(0..<3) { columIndex in
									let item = rowIndex * 3 + columIndex
									
									//마지막 행에 추가가 안된 데이터의 값을 나타낼때 생기는 오류 방지
									if item < fridayWebtoonList.count {
										VStack(alignment:.leading , spacing: 5) {
											Image(fridayWebtoonList[item].imageTitle)
												.resizable()
												.aspectRatio(contentMode: .fill)
												.frame(width: UIScreen.main.bounds.width / 3.35)
											
											Text(fridayWebtoonList[item].webtoonTitle)
												.font(.system(size: 13, weight: .semibold))
												.frame(maxWidth: .infinity, alignment: .leading)
												.lineLimit(1)
												.truncationMode(.tail)
											
											HStack(spacing: 0) {
												Text(fridayWebtoonList[item].authorName)
													.font(.system(size: 9))

												Text("★")
													.font(.system(size: 8))
												
												Text(fridayWebtoonList[item].rateScore)
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

struct FridayContent_Previews: PreviewProvider {
	static var previews: some View {
		FridayContent()
	}
}
