//
//  CategoryArea.swift
//  act5
//
//  Created by YouiHyon Kim on 2023/07/22.
//

import SwiftUI

struct CategoryArea: View {
	@State var selectedCategory : String = "월"
    var body: some View {
		ScrollView{
			VStack(spacing: 0){
				NavigationBarArea(selectedCategory: $selectedCategory)
				Divider()
				ContentArea(selectedCategory: $selectedCategory)
			}
		}
		
    }
}

struct CategoryArea_Previews: PreviewProvider {
    static var previews: some View {
        CategoryArea()
    }
}
