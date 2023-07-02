//
//  E.swift
//  Level_04_AppleStore
//
//  Created by Minkyung Kim on 2023/06/28.
//

import SwiftUI

struct E: View {
    var body: some View {
        Image("ImageE")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth:.infinity)
        
    }
}

struct E_Previews: PreviewProvider {
    static var previews: some View {
        E()
    }
}
