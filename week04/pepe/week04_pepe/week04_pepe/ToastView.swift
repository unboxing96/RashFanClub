//
//  ToastView.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//  ToastView: Rectangle { HStack { Text, Button } }

import SwiftUI

struct ToastView: View {
    var body: some View {
        HStack {
            Text("₩1,250,000부터")
            Spacer()
            Button {
                EmptyView()
            } label: {
                Text("구입하기")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 6)
            }
            .background(Color("ColorFontGray"))
            .cornerRadius(17)
        }
        .padding(20)
        .background(Color("ColorBtnSliver"))
        .cornerRadius(17)
    }
}

struct ToastView_Previews: PreviewProvider {
    static var previews: some View {
        ToastView()
    }
}
