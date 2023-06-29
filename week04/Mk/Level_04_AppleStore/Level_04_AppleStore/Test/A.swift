//
//  A.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/28.
//

import SwiftUI

struct A: View {
    var body: some View {
        Image("ImageA")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth:.infinity)
        
    }
}

struct A_Previews: PreviewProvider {
    static var previews: some View {
        A()
    }
}
