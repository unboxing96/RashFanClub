//
//  MainArea.swift
//  RashFanClub4th
//
//  Created by 077tech on 2023/06/18.
//

import SwiftUI
// 버튼 4개 + 아이폰 이미지 있는 최상단 뷰

struct MainArea: View {
    
    @StateObject var data: Data
    @StateObject var viewModel : ViewModel
    
    var body: some View {
        ZStack{
            Image(data.mainImage)
                    .resizable()
            VStack(spacing: 0){
                Text("iPhone 14 Pro")
                    .padding(.top, 70)
                    .font(.system(size: 20))
                Text("프로 그 이상.")
                    .padding(.top, 6)
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .fontWeight(.heavy)
                
                Spacer()
                
                Text(data.mainText)
                    .font(.system(size: 10))
                    .foregroundColor(Color.ColorFontDarkGray)
                    .padding(.bottom)
                
                ColorButtonComponents(database: data, viewModel: ViewModel(dataModel: data))
                    .padding(.bottom)
                Button(action: {
                    
                }) {
                    Text("AR로 보기")
                    Image(systemName: "arkit")
                }
                .foregroundColor(Color.ColorBtnBlue)
                .padding(.bottom, 30)
            }
            .multilineTextAlignment(.center)
            .foregroundColor(Color.ColorFontWhite)
            
        }
        .background(Color.ColorBgBlack)
        .frame(width: .infinity, height: 600)
        .padding(.top, 0)
    }
}

//MARK: PREVIEW
struct MainArea_Previews: PreviewProvider {
    static var previews: some View {
        MainArea(data: Data(), viewModel: ViewModel(dataModel: Data()))
    }
}
