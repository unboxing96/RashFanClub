//
//  B.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/28.
//

import SwiftUI

struct B: View {
    var body: some View {
        Image("ImageB")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth:.infinity)
        
    }
}

struct B_Previews: PreviewProvider {
    static var previews: some View {
        B()
    }
}
