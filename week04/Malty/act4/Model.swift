//
//  Model.swift
//  act4
//
//  Created by YouiHyon Kim on 2023/06/22.
//

import SwiftUI

class Count : ObservableObject {
    @Published var firstNumber = 1
    @Published var secondNumber = 2
    
    func addFirstNumber() {
        firstNumber += 1
    }
    func addSecondNumber() {
        secondNumber += 1
    }

    
}
