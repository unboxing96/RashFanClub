//
//  ViewModel.swift
//  RashFanClub4th
//
//  Created by 077tech on 2023/06/27.
//
// Main View Model

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @ObservedObject var data: Data
    
    @Published var colorButtonOpacity: [Double]
    @Published var colorButtonForegroundColor: [String]
    @Published var colorButtonFunctions: [() -> Void]
    
    // 생성자
    init(dataModel: Data) {
        self.data = dataModel
        self.colorButtonForegroundColor = []
        self.colorButtonOpacity = []
        self.colorButtonFunctions = []
        
        colorButtonForegroundColorArray()
        setupColorButtonOpacity()
        setupColorButtonFunctions()
    }
    
    // Focus 색상 Opacity 조정
    private func setupColorButtonOpacity() {
        colorButtonOpacity = [
            data.purpleOpacity,
            data.goldOpacity,
            data.silverOpacity,
            data.blackOpacity
        ]
    }
    
    // 버튼 색상 조정
    private func colorButtonForegroundColorArray() {
        colorButtonForegroundColor = [
            "ColorBtnDeepPurple",
            "ColorBtnGold",
            "ColorBtnSilver",
            "ColorBtnBlack"
        ]
    }
    
    // 함수로 인한 상태값 변화 (자세한 함수 내용은 아래 참조)
    private func setupColorButtonFunctions() {
        colorButtonFunctions = [
            changeToPurple,
            changeToGold,
            changeToSilver,
            changeToBlack
        ]
    }
    
    //Color 바꾸는 함수 모음
    private func changeToPurple(){
        data.mainImage = "ImgMain01"
        data.mainText = "딥 퍼플"
        data.currentColor = "purple"
        data.purpleOpacity = 1.0
        data.goldOpacity = 0.0
        data.silverOpacity = 0.0
        data.blackOpacity = 0.0
    }
    
    private func changeToGold() {
        data.mainImage = "ImgMain02"
        data.mainText = "골드"
        data.currentColor = "gold"
        data.purpleOpacity = 0.0
        data.goldOpacity = 1.0
        data.silverOpacity = 0.0
        data.blackOpacity = 0.0
    }
    
    private func changeToSilver() {
        data.mainImage = "ImgMain03"
        data.mainText = "실버"
        data.currentColor = "silver"
        data.purpleOpacity = 0.0
        data.goldOpacity = 0.0
        data.silverOpacity = 1.0
        data.blackOpacity = 0.0
    }
    
    private func changeToBlack() {
        data.mainImage = "ImgMain04"
        data.mainText = "스페이스 블랙"
        data.currentColor = "black"
        data.purpleOpacity = 0.0
        data.goldOpacity = 0.0
        data.silverOpacity = 0.0
        data.blackOpacity = 1.0
    }
    
    
    
}
