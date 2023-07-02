//
//  C.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/28.
//

import SwiftUI

struct C: View {
    var body: some View {
        Image("ImageC")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth:.infinity)
        
    }
}

struct C_Previews: PreviewProvider {
    static var previews: some View {
        C()
    }
}
