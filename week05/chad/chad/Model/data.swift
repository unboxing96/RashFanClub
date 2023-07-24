//
//  data.swift
//  chad
//
//  Created by 077tech on 2023/07/05.
//

import Foundation

class Data : ObservableObject, Identifiable{
    
    //Scroll Position 잡기
    @Published var scrollPosition: CGPoint = .zero
}
