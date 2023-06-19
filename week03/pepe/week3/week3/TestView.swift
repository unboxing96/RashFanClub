////
////  TestView.swift
////  week3
////
////  Created by kimpepe on 2023/06/02.
////
//
//import SwiftUI
//
//let coloredNavAppearance = UINavigationBarAppearance()
//   
//struct ListView: View {
//
//    init() {
//        coloredNavAppearance.configureWithOpaqueBackground()
//        coloredNavAppearance.backgroundColor = .systemBlue
//        coloredNavAppearance.titleTextAttributes = [.foregroundColor: UIColor.white]
//        coloredNavAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
//               
//        UINavigationBar.appearance().standardAppearance = coloredNavAppearance
//        UINavigationBar.appearance().scrollEdgeAppearance = coloredNavAppearance
//
//    }
//
//    var body: some View {
//        NavigationView {
//            Form {
//                Section(header: Text("General")) {
//                    HStack {
//                        Text("ListView #1")
//                        Spacer()
//                        Text("data")
//                            .multilineTextAlignment(.trailing)
//                    }
//                    HStack {
//                        Text("ListView #2")
//                        Spacer()
//                        Text("data")
//                            .multilineTextAlignment(.trailing)
//                    }
//                }
//
//            }
//            .navigationBarTitle("NavBar Title")
//        }
//    }
//}
//
//
//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView()
//    }
//}
