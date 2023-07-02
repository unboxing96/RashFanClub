//
//  MainArea.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/24.
//

import SwiftUI


struct MainBannerContent  {
    var imageTitle : String
    var productColor : String
}


struct HeaderArea: View {
	
	private let dataLayout : [ButtonColor] = [.DeepPurple, .Gold, .Silver, .SpaceGray]
    @State var infoIndex : Int = 0
    @State var btnActiveStrokeOffset = [-57, -19, 19, 57]
	
	private var bannerContentLists =  [
		MainBannerContent(imageTitle: "ImgMain01", productColor: "딥 퍼플"),
		MainBannerContent(imageTitle: "ImgMain02", productColor: "골드"),
		MainBannerContent(imageTitle: "ImgMain03", productColor: "실버"),
		MainBannerContent(imageTitle: "ImgMain04", productColor: "스페이스 블랙")
	]
    
    var body: some View {
        
        // MARK: - MainArea
        imageLayout(imageTitle: "\(bannerContentLists[infoIndex].imageTitle)", overlayAlignment: .top) {
			
            //텍스트 영역
            Text("iPhone 14 Pro")
                .customTextStyle(fontSize: 20, fontWeight: .medium, fontColor: "ColorFontWhite", textAlignment: .center)
                .padding(.top, 70)
            
            Text("프로 그 이상.")
                .customTextStyle(fontSize: 40, fontWeight: .bold, fontColor: "ColorFontWhite", textAlignment: .center)
            
			
            Spacer()
            
			
            //버튼 영역
			VStack {
				Text("\(bannerContentLists[infoIndex].productColor)")
					.customTextStyle(fontSize: 10, fontWeight: .regular, fontColor: "ColorFontDarkGray", textAlignment: .center)
				
				ZStack {
					//버튼 Active Stoke
					buttonActiveStroke()
					HStack(spacing: 15) {
						//버튼 클릭시, Index / 색 값을 넘겨주고, Index 값으로 buttonActiveStroke 의 Offset도 결정해줌.
						
						ForEach(dataLayout.indices,  id: \.self) { index in
							colorButton(index: index, buttonColor: dataLayout[index])
						}
						
					}
				}
				
				Button {
					print("AR로 보기")
				} label: {
					HStack{
						Text("AR로 보기")
							.font(.system(size : 14))
						Text(Image(systemName: "arkit"))
							.font(.system(size : 16))
					}
				}
				.padding(.bottom, 30)
			}
        }
    } //view End
    
    ///button active시 나타나는 Stroke
	//코드리뷰 01번 _ Chad
    private func buttonActiveStroke() -> some View {
		Circle()
			.foregroundColor(.clear)
			.frame(width: 31, height: 31)
			.overlay(
				Circle()
					.stroke(Color("ColorBtnBlue"), lineWidth: 1)
					.offset(x:CGFloat(btnActiveStrokeOffset[infoIndex]), y: 0)
			)
    }
    

    ///이미지 / 문구 변경 버튼
	private func colorButton(index: Int, buttonColor :  ButtonColor) -> some View {
			Circle()
				.frame(width: 23, height: 23)
				.overlay(
					Circle()
						.frame(width: 23)
						.foregroundColor(Color(buttonColor.name))
				)
				.onTapGesture {
					withAnimation(.interactiveSpring(response: 0.9, dampingFraction: 0.8)) {
						infoIndex = index
					}
				}
		}
    
}

struct MainArea_Previews: PreviewProvider {
    static var previews: some View {
        HeaderArea()
    }
}
