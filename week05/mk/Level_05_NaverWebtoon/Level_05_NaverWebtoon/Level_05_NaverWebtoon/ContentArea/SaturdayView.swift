//
//  SaturdayView.swift
//  Level_05_NaverWebtoon
//
//  Created by Minkyung Kim on 2023/07/23.
//

import SwiftUI

struct SaturdayView: View {
    @State private var rowIndex = 0
    @State private var columnIndex = 0
    var body: some View{
        VStack(spacing:15){
            ForEach(0..<webtoonInfoSat.count/3, id:\.self){rowIndex in
                HStack(spacing: 6){
                    ForEach(0..<3){columnIndex in
                        VStack(alignment: .leading){
                            let i: Int = rowIndex * 3 + columnIndex
                            Image(webtoonInfoSat[i].imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(maxWidth: .infinity)
                            
                            Text(webtoonInfoSat[i].title)
                                .font(.system(size: 13))
                                .frame(maxWidth:.infinity, alignment:.leading)
                                .fontWeight(.semibold)
                                .lineLimit(1)
                                .truncationMode(.tail)
                            HStack{
                                Text("\(webtoonInfoSat[i].author) ★\(webtoonInfoSat[i].rate)")
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

struct SaturdayView_Previews: PreviewProvider {
    static var previews: some View {
        SaturdayView()
    }
}
