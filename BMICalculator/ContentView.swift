//
//  ContentView.swift
//  BMICalculator
//
//  Created by David Cormell on 23/02/2022.
//

import SwiftUI

let bmiValues = BMIValues()
//var calculateBMI = BMICalculations.calculateBmi(weight: weight, height: height)


struct ContentView: View {
    @State private var weightString: String = ""
    @State private var heightString: String = ""
    @State private var bmi: String = ""
    @State private var bmiDesc: String = ""
    @State var bmiCalc = BMICalculations()

    var body: some View {
        VStack{
            Text("BMI CALCULATOR")
            Image("PublicHealth")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            Form{
                TextField("Enter weight in kg: ",
                          text: $weightString)
                TextField("Enter height in metres: ",
                          text: $heightString)
            }
            
           
            Button("Calculate BMI", action: {
                bmi = String(bmiCalc.calculateBmi(weight: Double(weightString)!, height: Double(heightString)!))
                //bmiDesc = String(bmiCalc.lookUpBmiClassification(Double(bmi: bmi)!)
                })
            
            Form{
                Text("Your BMI is: \(bmi)" )
                //Text("You are \(bmiDesc)")
                
            }
            
        }
        
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(bmiCalc: BMICalculations())
    }
}
