//
//  ContentView.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/03.
//

import SwiftUI

struct ContentView: View {
	@State var selectedCategory : String = "월"
    var body: some View {
		ScrollView(){
				VStack(spacing: 10){
					VStack(spacing: 0) {
						HeaderArea()
						CategoryArea()
					}
					.background(Color.BgWhite100)
					ButtonArea()
					FooterArea()
				}
				.background(Color.BgWhite300)
		}
		.ignoresSafeArea()
		.onAppear {
			//scrollView Bounce 막기
			//horizontal Bounce도 막힘.. 찾아라
			UIScrollView.appearance().bounces = false
		}
		
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView()
    }
}
