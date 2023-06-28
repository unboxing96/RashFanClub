//
//  ViewModel.swift
//  RashFanClub4th
//
//  Created by 077tech on 2023/06/27.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @ObservedObject var dataModel: DataModel
    
    @Published var colorButtonOpacity: [Double]
    @Published var colorButtonForegroundColor: [String]
    @Published var colorButtonFunctions: [() -> Void]
    
    init(dataModel: DataModel) {
        self.dataModel = dataModel
        self.colorButtonForegroundColor = []
        self.colorButtonOpacity = []
        self.colorButtonFunctions = []
        
        colorButtonForegroundColorArray()
        setupColorButtonOpacity()
        setupColorButtonFunctions()
    }
    
    private func setupColorButtonOpacity() {
        colorButtonOpacity = [
            dataModel.purpleOpacity,
            dataModel.goldOpacity,
            dataModel.silverOpacity,
            dataModel.blackOpacity
        ]
    }
    
    private func colorButtonForegroundColorArray() {
        colorButtonForegroundColor = [
            "ColorBtnDeepPurple",
            "ColorBtnGold",
            "ColorBtnSilver",
            "ColorBtnBlack"
        ]
    }
    
    private func setupColorButtonFunctions() {
        colorButtonFunctions = [
            changeToPurple,
            changeToGold,
            changeToSilver,
            changeToBlack
        ]
    }
    
    //Color 바꾸는 함수
    private func changeToPurple(){
        dataModel.mainImage = "ImgMain01"
        dataModel.mainText = "딥 퍼플"
        dataModel.currentColor = "purple"
        dataModel.purpleOpacity = 1.0
        dataModel.goldOpacity = 0.0
        dataModel.silverOpacity = 0.0
        dataModel.blackOpacity = 0.0
    }
    
    private func changeToGold() {
        dataModel.mainImage = "ImgMain02"
        dataModel.mainText = "골드"
        dataModel.currentColor = "gold"
        dataModel.purpleOpacity = 0.0
        dataModel.goldOpacity = 1.0
        dataModel.silverOpacity = 0.0
        dataModel.blackOpacity = 0.0
    }
    
    private func changeToSilver() {
        dataModel.mainImage = "ImgMain03"
        dataModel.mainText = "실버"
        dataModel.currentColor = "silver"
        dataModel.purpleOpacity = 0.0
        dataModel.goldOpacity = 0.0
        dataModel.silverOpacity = 1.0
        dataModel.blackOpacity = 0.0
    }
    
    private func changeToBlack() {
        dataModel.mainImage = "ImgMain04"
        dataModel.mainText = "스페이스 블랙"
        dataModel.currentColor = "black"
        dataModel.purpleOpacity = 0.0
        dataModel.goldOpacity = 0.0
        dataModel.silverOpacity = 0.0
        dataModel.blackOpacity = 1.0
    }
    
    
    
}
