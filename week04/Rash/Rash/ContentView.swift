//
//  ContentView.swift
//  Rash
//
//  Created by 김다빈 on 2023/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectColor = "purple"
    @State private var isOnBtn = false
    var body: some View {
        VStack{
            ZStack{
                ScrollView{
                    VStack(spacing:0){
                        MainArea(SelectColor: $selectColor)
                        ContentArea()
                        ProductArea(SelectColor: $selectColor)
                        
                    }
                }
                .background(VStack(spacing: .zero){
                    Color("ColorBgBlack");
                    Color("ColorBgGray")
                })
                .ignoresSafeArea()

                ZStack{
                    RoundedRectangle(cornerRadius: 16)
                        .frame(maxWidth: .infinity)
                        .frame(height: 68)
                        .foregroundColor(Color("ColorFontWhite"))
                        HStack{
                            Text("1,250,000부터")
                                .font(.system(size: 10))
                                .padding(.leading,20)
                            Spacer()
                            ZStack{
                                RoundedRectangle(cornerRadius: 20)
                                    .foregroundColor(Color("ColorBgWhite"))
                                Text("구입하기")
                                    .font(.system(size: 16,weight: .bold))
                                    .foregroundColor(Color("ColorBtnBlue"))

                            }
                            .frame(width: 88,height: 28)
                            .padding(.trailing,20)
                        }
                        .frame(maxWidth: .infinity)
                        .frame(height: 68)
                }
                .onAppear(){
                    isOnBtn = true
                }
                .transition(.move(edge: .bottom))
                .frame(maxWidth: .infinity)
                .frame(height: 68)
                .padding(.leading,13)
                .padding(.trailing,18)
                .padding(.top,586)
            }
           
        }
    
    }
}
// 첫번쨰 방법 vstack에 고정해놓는다. 그러면 계속뜨긴할듯? 근데 사라지는 거는 스크롤id? 좀 생각해볼 필요가 있다.
// 두 번쨰 방법 솔직히 저건 도대체 뭘로 만들어졌을까? 모달? sheet? 흠..
// 리탱글 지오메트리??

struct ScrollOffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGPoint = .zero

    static func reduce(value: inout CGPoint, nextValue: () -> CGPoint) {
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
