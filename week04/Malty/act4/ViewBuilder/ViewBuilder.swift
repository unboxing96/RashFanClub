//
//  ViewBuilder.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/23.
//
//


import SwiftUI

@ViewBuilder
func imageLayout<Content: View>
(imageTitle: String, overlayAlignment: Alignment, @ViewBuilder content: () -> Content) -> some View {
   
     VStack {
        Image(imageTitle)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity)
            .overlay(alignment: overlayAlignment) {
                VStack(spacing: 4) {
                    content()
                }
            }
    }
}
