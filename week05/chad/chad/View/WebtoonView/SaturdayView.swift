//
//  SaturdayView.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//

import SwiftUI

struct SaturdayView: View {
    @StateObject var viewModel : ViewModel
    
    var body: some View {
        VStack{
            HStack{
                ForEach(viewModel.saturdayWebtoonView.indices) { index in
                    if index < 3{
                        let webtoonComponent = viewModel.saturdayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
            HStack{
                ForEach(viewModel.saturdayWebtoonView.indices) { index in
                    if index < 6 && index >= 3{
                        let webtoonComponent = viewModel.saturdayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
            HStack{
                ForEach(viewModel.saturdayWebtoonView.indices) { index in
                    if index < 9 && index >= 6{
                        let webtoonComponent = viewModel.saturdayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
            HStack{
                ForEach(viewModel.saturdayWebtoonView.indices) { index in
                    if index < 12 && index >= 9{
                        let webtoonComponent = viewModel.saturdayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
            
            
        }
    }
}

struct SaturdayView_Previews: PreviewProvider {
    static var previews: some View {
        SaturdayView(viewModel: ViewModel())
    }
}
