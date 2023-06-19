////
////  SheetCancelSaveView.swift
////  week3
////
////  Created by kimpepe on 2023/06/02.
////
//
//import SwiftUI
//
//struct SettingView: View {
//    @State private var isAlarmOn: Bool = false
//    
//    var body: some View {
//        List {
//            NavigationLink(destination: EmptyView()) {
//                VStack {
//                    HStack {
//                        Text("반복")
//                        Spacer()
//                        Text("안 함")
//                    }
//                }
//            }
//            
//            HStack {
//                Text("레이블")
//                Spacer()
//                Text("알람")
//            }
//            
//            NavigationLink(destination: EmptyView()) {
//                VStack {
//                    HStack {
//                        Text("사운드")
//                        Spacer()
//                        Text("전파 탐지기")
//                    }
//                }
//            }
//            
//            HStack {
//                Text("다시 알림")
//                Spacer()
//                Toggle("", isOn: $isAlarmOn)
//            }
//        }
//        .listStyle(PlainListStyle()) // Set listStyle to PlainListStyle
//    }
//}
//
//struct SettingView_Previews: PreviewProvider {
//    static var previews: some View {
//        SettingView()
//    }
//}
