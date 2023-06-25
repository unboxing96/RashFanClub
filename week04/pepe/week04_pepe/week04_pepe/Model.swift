//
//  Model.swift
//  week04_pepe
//
//  Created by kimpepe on 2023/06/22.
//

import Foundation

let itemOtherColorArr = [
    ["ImgMain01", "딥 퍼플", "ColorBtnDeepPurple", "imgProduct01"],
    ["ImgMain02", "골드", "ColorBtnGold", "imgProduct02"],
    ["ImgMain03", "실버", "ColorBtnSliver", "imgProduct03"],
    ["ImgMain04", "스페이스 블랙", "ColorBtnSpaceBlack", "imgProduct04"]
]

struct itemOtherColors {
    var imgName: String = itemOtherColorArr[0][0]
    var colorName: String = itemOtherColorArr[0][1]
    var btnColorName: String = itemOtherColorArr[0][2]
    var imgProductName: String = itemOtherColorArr[0][3]
}
