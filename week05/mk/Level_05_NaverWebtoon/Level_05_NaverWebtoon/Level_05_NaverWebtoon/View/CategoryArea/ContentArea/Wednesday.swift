//
//  Wednesday.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/23.
//

import SwiftUI

struct Wednesday: View {
    @State private var rowIndex = 0
    @State private var columnIndex = 0
    var body: some View{
        VStack(spacing:15){
            ForEach(0..<webtoonInfoWed.count/3, id:\.self){rowIndex in
                HStack(spacing: 6){
                    ForEach(0..<3){columnIndex in
                        VStack(alignment: .leading){
                            let i: Int = rowIndex * 3 + columnIndex
                            Image(webtoonInfoWed[i].imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity)
                            
                            Text(webtoonInfoWed[i].title)
                                .font(.system(size: 13))
                                .frame(maxWidth:.infinity, alignment:.leading)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .truncationMode(.tail)
                            HStack{
                                Text("\(webtoonInfoWed[i].author) ★\(webtoonInfoWed[i].rate)")
                                    .font(.system(size: 8))
                                    .foregroundColor(Color.FontGray100)
                            }
                        }
                    }
                }
                .padding(.horizontal, 15)
            }
        }
        .padding(.bottom, 20)
    }
}

struct Wednesday_Previews: PreviewProvider {
    static var previews: some View {
        Wednesday()
    }
}
