//
//  ProductArea.swift
//  RashFanClub4th
//
//  Created by 077tech on 2023/06/18.
//

// 아래 회색 부분 뷰
import SwiftUI

struct ProductArea: View {
    var body: some View {
        // 전체 스택 (Background를 위함)
        ZStack{
            // 전체 스택 (Component 나열을 위함)
            VStack(spacing: 0){
                // "iPhone 14 Pro 더 깊게 살펴보기" 흰색 박스 (Rectangle 안에 overlay로 넣기)
                Rectangle()
                    .foregroundColor(Color("ColorBgWhite"))
                    .frame(width: .infinity, height: 173)
                    .overlay(
                        VStack(spacing: 0){
                            HStack(spacing: 0){
                                Text("iPhone 14 Pro ")
                                    .foregroundColor(.black)
                                    .font(.system(size: 24))
                                Text("더 깊이 살펴보기")
                                    .foregroundColor(.black)
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                            }
                            Button {
                                print("apple.com Click")
                            } label: {
                                Text("apple.com에서 더 알아보기")
                                    .font(.system(size: 12))
                                    .padding(.top, 10)
                            }
                        }
                            
                    )
                    .padding(.vertical, 20)
                    .background(Color("ColorBgGray"))
                
                // "iPhone 14 Pro" 쪽 이미지
                ZStack{
                    Image("ImgProduct01")
                        .resizable()
                        .frame(width: 393, height: 538)
                        .overlay(
                            VStack{
                                Text("iPhone 14 Pro")
                                    .font(.system(size: 26))
                                    .fontWeight(.bold)
                                    .padding(.top, 60)
                                Spacer()
                                // 구입하기 버튼
                                Button {
                                    print("구입하기 클릭")
                                } label: {
                                    Text("구입하기")
                                        .font(.system(size: 14))
                                        .padding(.horizontal, 14)
                                        .padding(.top, 5)
                                        .padding(.bottom, 3)
                                        .background(Color("ColorBtnBlue"))
                                        .foregroundColor(Color("ColorFontWhite"))
                                        .cornerRadius(13)
                                        .fontWeight(.bold)
                                }
                                .padding(.bottom, 14)

                                Text("₩ 1,550,000부터")
                                    .padding(.bottom, 51)
                                    .font(.system(size: 10))
                                    .foregroundColor(Color("ColorBgBlack"))
                            }
                        
                        )
                }

                //공유하기 버튼
                Rectangle()
                    .foregroundColor(Color("ColorBgWhite"))
                    .frame(width: 128, height: 38)
                    .overlay(
                        VStack{
                            Button {
                                print("공유하기 Click")
                            } label: {
                                Image(systemName: "square.and.arrow.up")
                                    .font(.system(size: 14))
                                Text("공유하기")
                                    .fontWeight(.bold)
                                    .fontWeight(.heavy)
                                    .font(.system(size: 14))
                            }
                        }
                    )
                    .cornerRadius(10)
                    .padding(.top, 20)
                
                //마지막 Text
                Text("1. iPhone 14 Pro 및 iPhone 14 Pro Max는 IEC 규격 60529하의 IP68 (이 문구를 발견하고 톡방에 올리면, 엠선생님의 NearMe 무료 음료수 이용권 증정)")
                    .padding(.top, 80)
                    .padding(.bottom, 20)
                    .padding(.horizontal, 10)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 10))
                    .foregroundColor(Color("ColorFontLastTextGray"))
            }
        }
        .background(Color("ColorBgGray"))
    }
}

//MARK: PREVIEW
struct ProductArea_Previews: PreviewProvider {
    static var previews: some View {
        ProductArea()
    }
}
