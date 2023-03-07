//
//  BMICalculations.swift
//  BMICalculator
//
//  Created by Cormell, David - DPC on 24/02/2022.
//

import Foundation



class BMICalculations {
    func calculateBmi(weight: Double, height: Double) -> Double {
        
        var bmi = weight * (height * height) / 100000
        
        return bmi
    }
    
    func lookUpBmiClassification(bmi: Double) -> String {
        
        if bmi < 18.5{
            return ("Underweight")
        } else if bmi >= 18.5 && bmi < 25{
            return("Healthy")
        } else if bmi >= 25 && bmi < 30{
            return("Overweight")
        } else if bmi > 30{
            return("Overweight")
        }
        return ""
    }
    
}
