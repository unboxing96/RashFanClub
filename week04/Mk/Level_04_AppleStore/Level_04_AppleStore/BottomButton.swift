//
//  PopOver.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/24.
//

import SwiftUI

struct BottomButton: View {
    var body: some View {
        Rectangle()
            .cornerRadius(17)
            .frame(width: 361, height: 68)
            .foregroundColor(.white)
            .overlay{
                
                HStack(spacing:158){
                    Text("₩1,250,000부터")
                        .foregroundColor(.black)
                        .font(.system(size: 10))
                    
                    Text("구입하기")
                        .foregroundColor(.blue)
                        .font(.system(size: 13))
                        .fontWeight(.bold)
                }
            }
    }
}

struct PopOver_Previews: PreviewProvider {
    static var previews: some View {
        BottomButton()
            .preferredColorScheme(.dark)
    }
}


