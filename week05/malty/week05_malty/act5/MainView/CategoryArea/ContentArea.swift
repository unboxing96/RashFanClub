//
//  ContentArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/06.
//

import SwiftUI

struct ContentArea: View {
	@State private var contentAreaHeight: CGRect = .zero
	@Binding var selectedCategory :String
	var body: some View {
		
		TabView(selection: $selectedCategory) {
			MondayContent().tag("월")
				.modifier(GetHeightModifier())
			TuesDayContent().tag("화")
				.modifier(GetHeightModifier())
			WednesdayContent().tag("수")
				.modifier(GetHeightModifier())
			ThursdayContent().tag("목")
				.modifier(GetHeightModifier())
			FridayContent().tag("금")
				.modifier(GetHeightModifier())
			SaturdayContent().tag("토")
				.modifier(GetHeightModifier())
			SundayContent().tag("일")
				.modifier(GetHeightModifier())
			NewContent().tag("신작")
				.modifier(GetHeightModifier())
		}
		.tabViewStyle(.page)
		.frame(height:contentAreaHeight.size.height)
		.padding(.bottom, 20)
		.padding(.top, 6)
		.onPreferenceChange(ContentRectSize.self) { rects in
			self.contentAreaHeight = rects
		}
	}
}

struct ContentArea_Previews: PreviewProvider {
	static var previews: some View {
		ContentArea(selectedCategory: .constant("월"))
	}
}
