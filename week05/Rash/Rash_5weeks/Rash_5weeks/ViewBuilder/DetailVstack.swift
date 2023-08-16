//
//  DetailVstack.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/05.
//



import SwiftUI

@ViewBuilder
func customHstack<Content: View>(imgName1: Image,webtoonName1: String, imgName2: Image, webtoonName2: String, imgName3: Image, webtoonName3: String,author: String, @ViewBuilder content: () -> Content) -> some View{
    HStack{
        VStack(spacing: 0){
            imgName1
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(webtoonName1)
                .modifier(TitleModifier())
            Text(author)
                .modifier(AuthorModifier())
        }
        VStack(spacing: 0){
            imgName2
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(webtoonName2)
                .modifier(TitleModifier())
            Text(author)
                .modifier(AuthorModifier())
        }
        VStack(spacing: 0){
            imgName3
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text(webtoonName3)
                .modifier(TitleModifier())
            Text(author)
                .modifier(AuthorModifier())
        }
        content()
        
    }
  
    
}
