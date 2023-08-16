//
//  WebtoonRow.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/15.
//

import SwiftUI

struct WebtoonRow: View {
    var webtoonImg1: Image
    var webtoonImg2: Image
    var webtoonImg3: Image
    var webtoonName1: String
    var webtoonName2: String
    var webtoonName3: String
    var author: String
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                webtoonImg1
                    .resizable()
                    .frame(width: 117,height: 152)
                Text(webtoonName1)
                    .modifier(TitleModifier())
                Text(author)
                    .modifier(AuthorModifier())
            }
            VStack(alignment: .leading){
                webtoonImg2
                    .resizable()
                    .frame(width: 117,height: 152)
                Text(webtoonName2)
                    .modifier(TitleModifier())
                Text(author)
                    .modifier(AuthorModifier())
            }
            VStack(alignment: .leading){
                webtoonImg3
                    .resizable()
                    .frame(width: 117,height: 152)
                Text(webtoonName3)
                    .modifier(TitleModifier())
                Text(author)
                    .modifier(AuthorModifier())
            }
        }
        .frame(maxWidth: .infinity)
        .padding([.leading,.trailing,.bottom],15)
    }
}

struct WebtoonRow_Previews: PreviewProvider {
    static var previews: some View {
        WebtoonRow(webtoonImg1: mondayImage.a.somnail, webtoonImg2: mondayImage.b.somnail, webtoonImg3: mondayImage.c.somnail, webtoonName1: mondayImage.a.webtoonName, webtoonName2: mondayImage.b.webtoonName, webtoonName3: mondayImage.c.webtoonName, author: "강민경★9.99")
    }
}
