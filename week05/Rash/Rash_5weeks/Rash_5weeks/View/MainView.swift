//
//  MainView.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/12.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 0){
                HeaderArea()
                ContentArea()
                    .frame(maxWidth: .infinity)
                    .frame(height: 827)
                BottonBtn()
                    .padding(.top,10)
                FooterArea()
                    .padding(.top,10)
            }
        }
        .background(colorBg.bgWhite300.colorName)
        .ignoresSafeArea()
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
