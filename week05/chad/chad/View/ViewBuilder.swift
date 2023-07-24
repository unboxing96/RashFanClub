//
//  ViewBuilder.swift
//  chad
//
//  Created by 077tech on 2023/07/06.
//

import Foundation
import SwiftUI

//MARK: ViewBuilder
@ViewBuilder
func webtoonComponentView(webtoonComponent: ViewModel.WebtoonComponent) -> some View {
    VStack{
        Image(webtoonComponent.webtoonImg)
            .resizable()
            .frame(width: 117, height: 152)
        HStack{
            Text(webtoonComponent.webtoonName)
                .font(.system(size: 13))
            Spacer()
        }
        HStack{
            Text(webtoonComponent.webtoonAuthor)
            Text(webtoonComponent.webtoonRating)
            Spacer()
        }
        .font(.system(size: 10))
        .multilineTextAlignment(.leading)
        
        }
        .frame(width: 117, height: 189)
}
