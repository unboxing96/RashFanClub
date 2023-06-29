//
//  D.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/28.
//

import SwiftUI

struct TestScrollOffsetPreferenceKeyforD: PreferenceKey {
    static var defaultValue: CGPoint = .zero
    static func reduce(value:inout CGPoint, nextValue:()->CGPoint){}
}

struct D: View {
    
    @Binding var heightMalty: CGFloat
    
    
    var body: some View {
        VStack(spacing:0) {
            Image("ImageD")
                .resizable()
                .aspectRatio(contentMode: .fit)
            .frame(maxWidth:.infinity)
            Image("ImageDd")
                .resizable()
                .aspectRatio(contentMode: .fit)
            .frame(maxWidth:.infinity)
            .background(
                GeometryReader {geo -> Color in
                    DispatchQueue.main.async{
                        heightMalty = geo.size.height
                    }
                    return Color.clear
                }
            )
        }
        .background(GeometryReader{geometry in
            Color.clear
                .preference(key:TestScrollOffsetPreferenceKeyforD.self, value: geometry.frame(in: .named("Scroll")).origin)
        })
        
    }
}

struct D_Previews: PreviewProvider {
    static var previews: some View {
        D(heightMalty: .constant(20))
    }
}
