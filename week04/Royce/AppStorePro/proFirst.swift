//
//  proFirst.swift
//  AppStorePro
//
//  Created by Jin Sang woo on 2023/06/21.
//

import SwiftUI

enum ImageState {
    case image1
    case image2
    case image3
    case image4
}

struct proFirst: View {
    
    @State private var currentImageState: ImageState = .image1

    
    var body: some View {

        ZStack(alignment : .top){
            
            getImageForCurrentState()
                .resizable()
                .frame(width:393, height:600)
            
            
            VStack(alignment : .center, spacing : 6){
                
                Text("iPhone 14 Pro")
                    .bold()
                    .font(.system(size : 20))
                    .foregroundColor(Color.white)
                

                
                Text("프로 그 이상.")
                    .bold()
                    .font(.system(size : 40))
                    .foregroundColor(Color.white)
                
            }
            .padding(.top, 70)
            .padding(.leading, 9)
            

            
            Text(currentText)
                .font(.system(size: 10))
                .foregroundColor(Color("ColorFontDarkGray"))
                .padding(.top, 478)

            
            
            HStack(spacing : 15){
                
                Button(action: {
                    switch currentImageState {
                        case .image1:
                            currentImageState = .image1
                        case .image2:
                            currentImageState = .image1
                        case .image3:
                            currentImageState = .image1
                        case .image4:
                            currentImageState = .image1
                    }
                }){
                    Circle()
                        .fill(Color("ColorBtnDeepPurple"))
                        .frame(width:23, height:23)

                }
                .overlay(
                    Circle()
                        .stroke(Color.blue, lineWidth: currentImageState == .image1 ? 1 : 0)
                        .frame(width: 31, height: 31)
                )
                
                
                Button(action: {
                    switch currentImageState {
                        case .image1:
                            currentImageState = .image2
                        case .image2:
                            currentImageState = .image2
                        case .image3:
                            currentImageState = .image2
                        case .image4:
                            currentImageState = .image2
                    }
                }){
                    Circle()
                        .fill(Color("ColorBtnGold"))
                        .frame(width:23, height:23)
                    
                }
                
                
                Button(action: {
                    switch currentImageState {
                        case .image1:
                            currentImageState = .image3
                        case .image2:
                            currentImageState = .image3
                        case .image3:
                            currentImageState = .image3
                        case .image4:
                            currentImageState = .image3
                    }
                }){
                    Circle()
                        .fill(Color("ColorBtnSilver"))
                        .frame(width:23, height:23)
                }
                
                
                Button(action: {
                    switch currentImageState {
                        case .image1:
                            currentImageState = .image4
                        case .image2:
                            currentImageState = .image4
                        case .image3:
                            currentImageState = .image4
                        case .image4:
                            currentImageState = .image4
                    }
                }){
                    Circle()
                        .fill(Color("ColorBtnBlack"))
                        .frame(width:23, height:23)
                }

                
            }
            .padding(.top, 500)
            
            
            Text("AR로 보기 \(Image(systemName: "arkit"))")
                .foregroundColor(Color("ColorBtnBlue"))
                .padding(.top, 550)
            
            
            
        }
        .frame(width:393, height:600)
        .background(Color("ColorFontBlack"))


    }
    
    private func getImageForCurrentState() -> Image {
            switch currentImageState {
            case .image1:
                return Image("ImgMain01")
            case .image2:
                return Image("ImgMain02")
            case .image3:
                return Image("ImgMain03")
            case .image4:
                return Image("ImgMain04")
            }
        }
    
    private var currentText: String {
            switch currentImageState {
            case .image1:
                return "딥 퍼플"
            case .image2:
                return "골드"
            case .image3:
                return "실버"
            case .image4:
                return "스페이스 블랙"
            }
        }
    
}

struct proFirst_Previews: PreviewProvider {
    static var previews: some View {
        proFirst()
    }
}
