//
//  ContentView.swift
//  webtoon
//
//  Created by Jin Sang woo on 2023/07/15.
//

import SwiftUI



struct ContentView: View {
    
    
    var body: some View {
        
            ScrollView {
                VStack(){
                    
                    HeaderArea()
                    
                    weekDay()
                    
                    
                    Rectangle()
                        .frame(height : 10)
                        .foregroundColor(Color("BgWhite300"))
                    
                    ButtonArea()
                    
                    Rectangle()
                        .frame(height : 10)
                        .foregroundColor(Color("BgWhite300"))
                    
                    FooterArea()
                    
                }
                
            }
            .ignoresSafeArea()
            
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
