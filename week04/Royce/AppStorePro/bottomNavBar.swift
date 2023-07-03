//
//  bottomNavBar.swift
//  AppStorePro
//
//  Created by Jin Sang woo on 2023/06/25.
//

import SwiftUI

struct bottomNavBar: View {
    var body: some View {

        RoundedRectangle(cornerRadius: 16)
            .foregroundColor(Color(UIColor(red: 0.95, green: 0.95, blue: 0.95, alpha: 1.0)))
            .frame(width: 361, height: 68)
            .overlay(
                HStack(){
                    
                    Spacer()
                    Text("₩1,250,000부터")
                        .font(.system(size : 10))
                    
                    Spacer(minLength: 158)
                    
                    Rectangle()
                        .frame(width: 88, height: 28)
                        .foregroundColor(Color(UIColor(red: 0.95, green: 0.95, blue: 0.96, alpha: 1.0)))
                        .overlay(
                            Text("구입하기")
                                .bold()
                                .foregroundColor(Color("ColorBtnBlue"))
                                .font(.system(size: 14))
                        )
                    Spacer()
                }
                
            )

    }
}

struct bottomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        bottomNavBar()
    }
}
