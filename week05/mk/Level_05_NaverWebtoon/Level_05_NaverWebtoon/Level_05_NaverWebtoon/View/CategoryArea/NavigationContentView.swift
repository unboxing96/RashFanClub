//
//  NavigationContentView.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/23.
//

import SwiftUI

struct NavigationContentView: View {
    @Binding var selected : String

    var body: some View {
        NavigationBarArea2(selected: $selected)
        ContentArea(selected: $selected)
    }
}

//struct NavigationContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        NavigationContentView(selected: "월")
//    }
//}
