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
                TextField("Enter height in cm: ",
                          text: $heightString)
            }
            
            Form{
                Text("Your BMI is: \(bmi)" )
                Text("You are: \(bmiDesc)")
                            
            }
            
           
            Button("Calculate BMI", action: {
              if Double(weightString) == nil || Double(heightString) == nil {
                print("That is not an integer")
                print("Please try again")
              } else {
                  bmi = String(bmiCalc.calculateBmi(weight: Double(weightString)!, height: Double(heightString)!))
                  bmiDesc = bmiCalc.lookUpBmiClassification(bmi: Double(bmi)!)
                }
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(bmiCalc: BMICalculations())
    }
}
