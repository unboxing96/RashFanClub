//
//  SundayView.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/23.
//

import SwiftUI

struct SundayView: View {
    @State private var rowIndex = 0
    @State private var columnIndex = 0
    var body: some View{
        VStack(spacing:15){
            ForEach(0..<webtoonInfoSun.count/3, id:\.self){rowIndex in
                HStack(spacing: 6){
                    ForEach(0..<3){columnIndex in
                        VStack(alignment: .leading){
                            let i: Int = rowIndex * 3 + columnIndex
                            Image(webtoonInfoSun[i].imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity)
                            
                            Text(webtoonInfoSun[i].title)
                                .font(.system(size: 13))
                                .frame(maxWidth:.infinity, alignment:.leading)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .truncationMode(.tail)
                            HStack{
                                Text("\(webtoonInfoSun[i].author) ★\(webtoonInfoSun[i].rate)")
                                    .font(.system(size: 8))
                                    .foregroundColor(Color.fontGray100)
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

struct SundayView_Previews: PreviewProvider {
    static var previews: some View {
        SundayView()
    }
}
