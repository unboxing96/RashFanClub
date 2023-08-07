//
//  CategoryArea.swift
//  week05
//
//  Created by kimpepe on 2023/08/06.
//

import Foundation
import SwiftUI

struct CategoryArea: View {
    @State var selectedCategory: String = "월"
    
    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                NavigationBarArea(selectedCategory: $selectedCategory)
                
                Divider()
                
                ContentArea(selectedCategory: $selectedCategory)
            }
        }
    }
}

struct CategoryArea_Previews: PreviewProvider {
    static var previews: some  View {
        CategoryArea()
    }
}
