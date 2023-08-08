//
//  FridayView.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//

import SwiftUI

struct FridayView: View {
    
    @StateObject var viewModel : ViewModel
    
    var body: some View {
        
        VStack {
            ForEach(0..<4) { row in
                HStack {
                    ForEach((row * 3)..<(row * 3 + 3)) { index in
                        let webtoonComponent = viewModel.fridayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
        }
    }
    
//    var body: some View {
//        VStack{
//            HStack{
//                ForEach(viewModel.fridayWebtoonView.indices) { index in
//                    if index < 3{
//                        let webtoonComponent = viewModel.fridayWebtoonView[index]
//                        webtoonComponentView(webtoonComponent: webtoonComponent)
//                    }
//                }
//            }
//            HStack{
//                ForEach(viewModel.fridayWebtoonView.indices) { index in
//                    if index < 6 && index >= 3{
//                        let webtoonComponent = viewModel.fridayWebtoonView[index]
//                        webtoonComponentView(webtoonComponent: webtoonComponent)
//                    }
//                }
//            }
//            HStack{
//                ForEach(viewModel.fridayWebtoonView.indices) { index in
//                    if index < 9 && index >= 6{
//                        let webtoonComponent = viewModel.fridayWebtoonView[index]
//                        webtoonComponentView(webtoonComponent: webtoonComponent)
//                    }
//                }
//            }
//            HStack{
//                ForEach(viewModel.fridayWebtoonView.indices) { index in
//                    if index < 12 && index >= 9{
//                        let webtoonComponent = viewModel.fridayWebtoonView[index]
//                        webtoonComponentView(webtoonComponent: webtoonComponent)
//                    }
//                }
//            }
//
//
//        }
//    }
}

struct FridayView_Previews: PreviewProvider {
    static var previews: some View {
        FridayView(viewModel: ViewModel())
    }
}
