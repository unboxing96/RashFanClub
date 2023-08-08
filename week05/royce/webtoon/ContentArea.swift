//
//  ContentArea.swift
//  webtoon
//
//  Created by Jin Sang woo on 2023/07/16.
//

import SwiftUI

struct ContentArea: View {
    var body: some View {
        
        VStack(spacing: 15) {
            ForEach(contentItemsMon, id: \.self) { row in
                HStack(spacing: 15) {
                    ForEach(row, id: \.id) { item in
                        VStack(alignment: .leading) {
                            Image(item.imageName)
                                .resizable()
                                .frame(width: 117, height: 152)
                            Spacer().frame(height: 5)
                            Text(item.title)
                                .font(.custom("Pretendard-bold", size: 13))
                            Spacer().frame(height: 4)
                            Text(item.subtitle)
                                .font(.custom("Pretendard", size: 10))
                                .foregroundColor(Color("FontGray100"))
                        }
                    }
                }
            }
        }
    }
}




struct ContentArea_Previews: PreviewProvider {
    static var previews: some View {
        ContentArea()
    }
}
