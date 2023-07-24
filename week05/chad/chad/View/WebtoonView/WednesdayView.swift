//
//  ChadView.swift
//  chad
//
//  Created by 077tech on 2023/07/04.
//

import SwiftUI

struct WednesdayView: View {
    
    @StateObject var viewModel : ViewModel
    
    var body: some View {
        VStack{
            HStack{
                ForEach(viewModel.wednesdayWebtoonView.indices) { index in
                    if index < 3{
                        let webtoonComponent = viewModel.wednesdayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
            HStack{
                ForEach(viewModel.wednesdayWebtoonView.indices) { index in
                    if index < 6 && index >= 3{
                        let webtoonComponent = viewModel.wednesdayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
            HStack{
                ForEach(viewModel.wednesdayWebtoonView.indices) { index in
                    if index < 9 && index >= 6{
                        let webtoonComponent = viewModel.wednesdayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
            HStack{
                ForEach(viewModel.wednesdayWebtoonView.indices) { index in
                    if index < 12 && index >= 9{
                        let webtoonComponent = viewModel.tuesdayWebtoonView[index]
                        webtoonComponentView(webtoonComponent: webtoonComponent)
                    }
                }
            }
            
            
        }
    }
}

struct ChadView_Previews: PreviewProvider {
    static var previews: some View {
        WednesdayView(viewModel: ViewModel())
    }
}
