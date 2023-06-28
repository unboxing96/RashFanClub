//
//  ToastView.swift
//  RashFanClub4th
//
//  Created by 077tech on 2023/06/23.
//

//withAnimation(interactiveAprint(response: 0.5, dampingFraction: 0.5)

// Toast 형식으로 나오는 뷰
import SwiftUI

struct ToastView: View {
    var body: some View {
        // Toast 메인뷰
            Rectangle()
                .foregroundColor(Color.white)
                .frame(width: 361, height: 68)
                .cornerRadius(12)
                .overlay(
        // 택스트 + 버튼의 HStack
                    HStack{
                        Text("₩1,250,000부터")
                            .padding(.vertical, 28)
                            .padding(.leading, 20)
                            .font(.system(size: 10))
                        Spacer()
                        Button {
                            print("구입하기 CLICK")
                        } label: {
                            Text("구입하기")
                                .padding(.vertical, 28)
                                .padding(.trailing, 40)
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                                .fontWeight(.heavy)
                        }
                    }
                )
            }
        }


//MARK: PREVIEW
struct ToastView_Previews: PreviewProvider {
    static var previews: some View {
        ToastView()
    }
}
