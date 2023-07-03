//
//  BottomButton.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/25.
//

import SwiftUI

struct testButton: View {
	var body: some View {
	
		VStack{
			HStack{
				Text("hello")
					.customLinear(fontSize: 20, fontWeight: .bold, textAlignment: .center)
					.frame(maxWidth: .infinity)
					.padding(.horizontal, 20)
				.padding(.vertical, 20)
			}
			.background(.ultraThickMaterial)
			.cornerRadius(16)
		}
		

		
	}
}

struct testButton_Previews: PreviewProvider {
	static var previews: some View {
		testButton()
	}
}
