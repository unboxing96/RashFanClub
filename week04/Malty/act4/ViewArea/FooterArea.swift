//
//  FooterArea.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/25.
//

import SwiftUI

struct FooterArea: View {
	var body: some View {
		VStack(spacing: 0) {
			Rectangle()
				.frame(height: 78)
				.foregroundColor(Color("ColorBgGray"))
				.overlay {
					Button {
						print("공유하기")
					} label: {
						HStack(spacing: 10) {
							Text("\(Image(systemName: "square.and.arrow.up"))")
								.font(.system(size: 14, weight: .medium))
							
							Text("공유하기")
								.font(.system(size: 14, weight: .medium))
							
						}
						.padding(.horizontal, 25)
						.padding(.vertical, 11)
						.background(Color("ColorBgWhite"))
						.cornerRadius(16)
					}
				}
			
			Rectangle()
				.frame(height: 124)
				.frame(maxWidth: .infinity)
				.foregroundColor(Color("ColorBgGray"))
				.overlay(alignment : .bottom) {
					Text("1. iPhone 14 Pro 및 iPhone 14 Pro Max는 IEC 규격 60529하의 IP68 (이 문구를 발견하고 톡방에 올리면, 엠선생님의 NearMe 무료 음료수 이용권 증정)")
						.font(.system(size :  10, weight: .regular))
						.padding(.bottom, 40)
						.padding(.horizontal, 10)
						.foregroundColor(Color("ColorFontDarkGray"))
						.background(Color("ColorBgGray"))
				}
		}
	}
}

struct FooterArea_Previews: PreviewProvider {
	static var previews: some View {
		FooterArea()
	}
}
