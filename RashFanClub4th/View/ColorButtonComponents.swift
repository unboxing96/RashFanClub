//
//  ColorButtonComponents.swift
//  RashFanClub4th
//
//  Created by 077tech on 2023/06/18.
//

//MARK: 버튼 4개 View

import SwiftUI
struct ColorButtonComponents: View {
    @ObservedObject var database: DataModel
    @ObservedObject var viewModel: ViewModel
    
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                let colorOpacity = viewModel.colorButtonOpacity[index]
                let foregroundColor = viewModel.colorButtonForegroundColor[index]
                let colorFunction = viewModel.colorButtonFunctions[index]

                colorButton(opacity: colorOpacity, foregroundColor: foregroundColor) {
                    colorFunction()
                }
            }
        }
    }
    
    @ViewBuilder
    func colorButton(opacity: Double, foregroundColor: String, changeFunction: @escaping () -> Void) -> some View {
        ZStack {
            // Focus Circle
            Circle()
                .strokeBorder(Color("ColorBtnBlue"))
                .frame(width: 31, height: 31)
                .opacity(opacity)
                .overlay(
                    // Main Color Circle
                    Circle()
                        .frame(width: 23, height: 23)
                        .foregroundColor(Color(foregroundColor))
                        .onTapGesture {
                            changeFunction()
                        }
                )
        }
    }
}


//MARK: PREVIEW
struct ColorButtonComponents_Previews: PreviewProvider {
    static var previews: some View {
        ColorButtonComponents(database: DataModel(), viewModel: ViewModel(dataModel: DataModel()))
    }
}




//            colorButton(opacity: database.purpleOpacity, foregroundColor: "ColorBtnDeepPurple"){
//                database.changeToPurple()
//            }
//            colorButton(opacity: database.goldOpacity, foregroundColor: "ColorBtnGold"){
//                database.changeToGold()
//            }
//            colorButton(opacity: database.silverOpacity, foregroundColor: "ColorBtnSilver"){
//                database.changeToSilver()
//            }
//            colorButton(opacity: database.blackOpacity, foregroundColor: "ColorBtnBlack"){
//                database.changeToBlack()
//            }
