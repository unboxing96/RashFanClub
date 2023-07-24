//
//  SwiftUIView.swift
//  Rash_5weeks
//
//  Created by 김다빈 on 2023/07/16.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        VStack{
            WebtoonRow(webtoonImg1: newImage.a.somnail, webtoonImg2: newImage.b.somnail, webtoonImg3: newImage.c.somnail, webtoonName1: newImage.a.webtoonName, webtoonName2: newImage.b.webtoonName, webtoonName3: newImage.c.webtoonName, author: "강민경★9.99")
                .padding(.top, 6)
            WebtoonRow(webtoonImg1: newImage.d.somnail, webtoonImg2: newImage.e.somnail, webtoonImg3: newImage.f.somnail, webtoonName1: newImage.d.webtoonName, webtoonName2: newImage.e.webtoonName, webtoonName3: newImage.f.webtoonName, author: "강민경★9.99")
            WebtoonRow(webtoonImg1: newImage.g.somnail, webtoonImg2: newImage.h.somnail, webtoonImg3: newImage.i.somnail, webtoonName1: newImage.g.webtoonName, webtoonName2: newImage.h.webtoonName, webtoonName3: newImage.i.webtoonName, author: "강민경★9.99")
            WebtoonRow(webtoonImg1: newImage.j.somnail, webtoonImg2: newImage.k.somnail, webtoonImg3: newImage.l.somnail, webtoonName1: newImage.j.webtoonName, webtoonName2: newImage.k.webtoonName, webtoonName3: newImage.l.webtoonName, author: "강민경★9.99")
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
