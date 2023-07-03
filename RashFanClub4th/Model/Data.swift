//
//  Database.swift
//  RashFanClub4th
//
//  Created by 077tech on 2023/06/22.
//

//Model + Viewmodel
import Foundation
class Data : ObservableObject, Identifiable{
    
    //Scroll Position 잡기
    @Published var scrollPosition: CGPoint = .zero
    
    //이미지 버튼 클릭 시 변하는 변수 값
    @Published var mainImage = "ImgMain01"
    @Published var mainText = "딥 퍼플"
    @Published var currentColor = "purple"
    
    // 버튼 focus 기능
    @Published var purpleOpacity = 1.0
    @Published var goldOpacity = 0.0
    @Published var silverOpacity = 0.0
    @Published var blackOpacity = 0.0
 
}

