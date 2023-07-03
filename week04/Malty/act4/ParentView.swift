//
//  ParentView.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/22.
//

import SwiftUI

struct ParentView: View {
    
    @StateObject var count = Count()
    
    var body: some View {
        VStack{
            Button {
                count.addFirstNumber()
            } label: {
                Text("\(count.firstNumber)")
            }

            
        }
    }
}

struct ParentView_Previews: PreviewProvider {
    static var previews: some View {
        ParentView()
    }
}
