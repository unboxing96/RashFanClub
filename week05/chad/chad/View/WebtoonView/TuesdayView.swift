//
//  PepeView.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//

import SwiftUI

struct TuesdayView: View {
    
    @StateObject var viewModel : ViewModel
    
    var body: some View {
        
        VStack {
            ForEach(0..<4) { row in
                HStack {
                    ForEach((row * 3)..<(row * 3 + 3)) { index in
                        let webtoonComponent = viewModel.tuesdayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
        }
    }
//        VStack{
//            HStack{
//                ForEach(viewModel.tuesdayWebtoonView.indices) { index in
//                    if index < 3{
//                        let webtoonComponent = viewModel.tuesdayWebtoonView[index]
//                        webtoonComponentView(webtoonComponent: webtoonComponent)
//                    }
//                }
//            }
//            HStack{
//                ForEach(viewModel.tuesdayWebtoonView.indices) { index in
//                    if index < 6 && index >= 3{
//                        let webtoonComponent = viewModel.tuesdayWebtoonView[index]
//                        webtoonComponentView(webtoonComponent: webtoonComponent)
//                    }
//                }
//            }
//            HStack{
//                ForEach(viewModel.tuesdayWebtoonView.indices) { index in
//                    if index < 9 && index >= 6{
//                        let webtoonComponent = viewModel.tuesdayWebtoonView[index]
//                        webtoonComponentView(webtoonComponent: webtoonComponent)
//                    }
//                }
//            }
//            HStack{
//                ForEach(viewModel.tuesdayWebtoonView.indices) { index in
//                    if index < 12 && index >= 9{
//                        let webtoonComponent = viewModel.tuesdayWebtoonView[index]
//                        webtoonComponentView(webtoonComponent: webtoonComponent)
//                    }
//                }
//            }
//
//
//        }
//    }
}




struct PepeView_Previews: PreviewProvider {
    static var previews: some View {
        TuesdayView(viewModel: ViewModel())
    }
}
