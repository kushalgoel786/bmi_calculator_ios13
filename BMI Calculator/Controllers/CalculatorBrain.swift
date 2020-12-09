//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Kapil Kedar on 12/04/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain{
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Nil"
        
    }
    
    func getColor() -> UIColor  {
        return bmi?.color ?? UIColor.white
    }
    
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight/(height*height)
        if bmiValue<18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat More Sweets.", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        }else if bmiValue<=24.5{
            bmi = BMI(value: bmiValue, advice: "You are fit. Keep it up.", color:#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat Less Sweets.", color:#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
        
    }
    
}
