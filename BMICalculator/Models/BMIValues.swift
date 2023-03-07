//
//  BMIValues.swift
//  BMICalculator
//
//  Created by Jakotiah, Akshat (PGW) on 07/03/2023.
//

import Foundation

class BMIValues: ObservableObject {
    @Published var weight: Double
    @Published var height: Double
    
    
    init() {
        self.weight = 65.0
        self.height = 170.5
    }
}
