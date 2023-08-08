//
//  AllDayView.swift
//  chad
//
//  Created by 077tech on 2023/08/06.
//

import SwiftUI

struct AllDayView: View {
    @StateObject var viewModel : ViewModel
    @Binding var selectedPage: Int
    
    
    var body: some View {
        if selectedPage == 0{
            VStack {
                ForEach(0..<4) { row in
                    HStack {
                        ForEach((row * 3)..<(row * 3 + 3)) { index in
                            let webtoonComponent = viewModel.mondayWebtoonView[index]
                            webtoonComponentView(webtoonComponent: webtoonComponent)
                        }
                    }
                }
            }
        }
        else if selectedPage == 1{
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
        else if selectedPage == 2{
            VStack {
                ForEach(0..<4) { row in
                    HStack {
                        ForEach((row * 3)..<(row * 3 + 3)) { index in
                            let webtoonComponent = viewModel.wednesdayWebtoonView[index]
                            webtoonComponentView(webtoonComponent: webtoonComponent)
                        }
                    }
                }
            }
        }
        else if selectedPage == 3{
            VStack {
                ForEach(0..<4) { row in
                    HStack {
                        ForEach((row * 3)..<(row * 3 + 3)) { index in
                            let webtoonComponent = viewModel.thursdayWebtoonView[index]
                            webtoonComponentView(webtoonComponent: webtoonComponent)
                        }
                    }
                }
            }
        }
        else if selectedPage == 4{
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
        else if selectedPage == 5{
            VStack {
                ForEach(0..<4) { row in
                    HStack {
                        ForEach((row * 3)..<(row * 3 + 3)) { index in
                            let webtoonComponent = viewModel.saturdayWebtoonView[index]
                            webtoonComponentView(webtoonComponent: webtoonComponent)
                        }
                    }
                }
            }
        }
        else if selectedPage == 6{
            VStack {
                ForEach(0..<4) { row in
                    HStack {
                        ForEach((row * 3)..<(row * 3 + 3)) { index in
                            let webtoonComponent = viewModel.sundayWebtoonView[index]
                            webtoonComponentView(webtoonComponent: webtoonComponent)
                        }
                    }
                }
            }
        }
        else if selectedPage == 7{
            VStack {
                ForEach(0..<4) { row in
                    HStack {
                        ForEach((row * 3)..<(row * 3 + 3)) { index in
                            let webtoonComponent = viewModel.newWebtoonView[index]
                            webtoonComponentView(webtoonComponent: webtoonComponent)
                        }
                    }
                }
            }
        }
        
        
        }//body
}//struct

struct AllDayView_Previews: PreviewProvider {
    static var previews: some View {
        AllDayView(viewModel: ViewModel(), selectedPage: .constant(1))
    }
}
