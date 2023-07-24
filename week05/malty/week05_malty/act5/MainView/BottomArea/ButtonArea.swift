//
//  ButtonArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/16.
//

import SwiftUI

struct ButtonArea: View {
    var body: some View {
		
		HStack(spacing: 3){
			Image.questionmarkCircleFill
				.font(.system(size:20, weight: .bold))
				.foregroundColor(Color.FontGreen)
			
			Text("랜덤작품")
				.font(.pretendard(size:16, .bold))
			
			Text("보러가기")
				.font(.pretendard(size:16, .regular))
			
			Image.chevronRight
				.font(.system(size:14, weight: .light))
		}
		.padding(.vertical, 16)
		.frame(maxWidth: .infinity)
		.background(Color.BgWhite100)
		
    }
}

struct ButtonArea_Previews: PreviewProvider {
    static var previews: some View {
        ButtonArea()
    }
}
