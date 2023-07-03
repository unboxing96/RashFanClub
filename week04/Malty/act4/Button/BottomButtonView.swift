//
//  BottomButton.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/25.
//

import SwiftUI

struct BottomButtonView: View {
    var body: some View {
	
		VStack{
			HStack{
				Text("₩1,250,000부터")
					.font(.system(size : 13, weight: .regular))
					.padding(.leading, 20)
				
				Spacer()
				
				Button {
					print("구입하기")
				} label: {
					Text("구입하기")
						.font(.system(size : 13))
						.padding(EdgeInsets(top: 6, leading: 20, bottom: 6, trailing: 20))
						.background(.ultraThinMaterial)
						.cornerRadius(16)
						.padding(.trailing, 20)
				}
				.padding(.vertical, 20)
			}
			.background(.ultraThickMaterial)
			.cornerRadius(16)
		}
		

		
    }
}

struct BottomButtonView_Previews: PreviewProvider {
    static var previews: some View {
		BottomButtonView()
    }
}
