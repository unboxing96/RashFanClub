//
//  ContentView.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModel : ViewModel
    
    init() {
        UIScrollView.appearance().bounces = false
        self.viewModel = ViewModel()
    }

    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 0){
                HeaderArea()
                    .frame(width: .infinity, height: 250)
                    .background(Color.white)
                    .padding(.bottom, 0)
                
                NavigationBarArea(viewModel: ViewModel())
                    .frame(width: .infinity)
                    .background(Color.white)
                
                Spacer()
                    .frame(height: 10)
                    
                
                ButtonArea()
                    .frame(height: 56)
                    .padding(.vertical, 10)
                    .background(Color.white)
                
                Spacer()
                    .frame(height: 10)
                
                FooterArea()
            }
        }
        .background(Color("BgWhite300"))
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
