//
//  weekDay.swift
//  webtoon
//
//  Created by Jin Sang woo on 2023/07/15.
//

import SwiftUI

struct weekDay: View {
    let daysOfWeek = ["월", "화", "수", "목", "금", "토", "일", "신작"]
    
    var selectedContentItems: [[ContentItem]] {
        switch selectedDayIndex {
            case 0:
                return contentItemsMon
            case 1:
                return contentItemsTue
            case 2:
                return contentItemsWeds
            case 3:
                return contentItemsThurs
            case 4:
                return contentItemsFri
            case 5:
                return contentItemsSat
            case 6:
                return contentItemsSun
            case 7:
                return contentItemsNew
            default:
                return []
        }
    }
    
    @State private var selectedDayIndex = 0
    @State private var linePosition: CGFloat = 0
    
    var body: some View {
        VStack(alignment: .leading){
            VStack(){
                HStack(spacing: 25) {
                    ForEach(daysOfWeek.indices, id: \.self) { index in
                        Button(action: {
                            selectedDayIndex = index
                            linePosition = calculateLinePosition(for: index)
                        }) {
                            VStack {
                                Text(daysOfWeek[index])
                                    .font(.system(size: 12))
                                    .fontWeight(selectedDayIndex == index ? .bold : .regular)
                                    .foregroundColor(selectedDayIndex == index ? Color("FontGreen") : .black)
                            }
                        }
                        .buttonStyle(PlainButtonStyle())
                        .frame(width: 22)
                    }
                }
            }
            .frame(height:24)
            
            Rectangle()
                .fill(Color("FontGreen"))
                .frame(width: 22, height: 2)
                .animation(.easeInOut(duration: 0.3))
                .offset(x: linePosition, y: 0)
            
            
            
            
            TabView(selection: $selectedDayIndex) {
                ForEach(daysOfWeek.indices, id: \.self) { index in
                    VStack(spacing: 15) {
                        ForEach(selectedContentItems, id: \.self) { row in
                            HStack(spacing: 15) {
                                ForEach(row, id: \.id) { item in
                                    VStack(alignment: .leading) {
                                        Image(item.imageName)
                                            .resizable()
                                            .frame(width: 117, height: 152)
                                        Spacer().frame(height: 5)
                                        Text(item.title.prefix(12) + (item.title.count > 12 ? "..." : ""))
                                            .font(.custom("Pretendard-bold", size: 13))
                                            .lineLimit(1)
                                            .truncationMode(.tail)
                                        Spacer().frame(height: 4)
                                        Text(item.subtitle.prefix(12) + (item.subtitle.count > 12 ? "..." : ""))
                                            .font(.custom("Pretendard", size: 10))
                                            .foregroundColor(Color("FontGray100"))
                                    }
                                }
                            }
                        }
                    }
                    .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .animation(.easeInOut(duration: 0.3))
            .frame(height : 827)
        }
    }
    
    
    //            VStack(spacing: 15) {
    //                ForEach(selectedContentItems, id: \.self) { row in
    //                    HStack(spacing: 15) {
    //                        ForEach(row, id: \.id) { item in
    //                            VStack(alignment: .leading) {
    //                                Image(item.imageName)
    //                                    .resizable()
    //                                    .frame(width: 117, height: 152)
    //                                Spacer().frame(height: 5)
    //                                Text(item.title.prefix(12) + (item.title.count > 12 ? "..." : ""))
    //                                    .font(.custom("Pretendard-bold", size: 13))
    //                                    .lineLimit(1)
    //                                    .truncationMode(.tail)
    //
    //                                Spacer().frame(height: 4)
    //                                Text(item.subtitle.prefix(12) + (item.subtitle.count > 12 ? "..." : ""))
    //                                    .font(.custom("Pretendard", size: 10))
    //                                    .foregroundColor(Color("FontGray100"))
    //
    //                            }
    //                        }
    //                    }
    //                }
    //            }
    //        }
    ////        .frame(height: 43)
    //    }
    //
    
    func calculateLinePosition(for index: Int) -> CGFloat {
        let buttonWidth: CGFloat = 50
        let buttonOffset: CGFloat = buttonWidth * CGFloat(index)
        let buttonCenter: CGFloat = buttonOffset
        
        return buttonCenter - (buttonWidth / 2)
    }
}



struct weekDay_Previews: PreviewProvider {
    static var previews: some View {
        weekDay()
    }
}








//
//        TabView(selection: $selectedDayIndex) {
//            ForEach(daysOfWeek.indices, id: \.self) { index in
//                VStack(spacing: 15) {
//                    ForEach(selectedContentItems, id: \.self) { row in
//                        HStack(spacing: 15) {
//                            ForEach(row, id: \.id) { item in
//                                VStack(alignment: .leading) {
//                                    Image(item.imageName)
//                                        .resizable()
//                                        .frame(width: 117, height: 152)
//                                    Spacer().frame(height: 5)
//                                    Text(item.title.prefix(12) + (item.title.count > 12 ? "..." : ""))
//                                        .font(.custom("Pretendard-bold", size: 13))
//                                        .lineLimit(1)
//                                        .truncationMode(.tail)
//                                    Spacer().frame(height: 4)
//                                    Text(item.subtitle.prefix(12) + (item.subtitle.count > 12 ? "..." : ""))
//                                        .font(.custom("Pretendard", size: 10))
//                                        .foregroundColor(Color("FontGray100"))
//                                }
//                            }
//                        }
//                    }
//                }
//                .tag(index)
//            }
//        }
//        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
//        .animation(.easeInOut(duration: 0.3))
//    }
//}
