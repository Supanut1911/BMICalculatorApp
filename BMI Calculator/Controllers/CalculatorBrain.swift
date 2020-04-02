//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Supanut Laddayam on 2/4/2563 BE.
//  Copyright © 2563 Angela Yu. All rights reserved.
//


import UIKit

struct CalculatorBrain {
    var bmi: Bmi?
     
    
    func getBMIValue() -> String{
        if let bmiValue = bmi {
            let bmiValueDecimal = String(format: "%.1f", bmiValue.value ?? 0.0)
            return bmiValueDecimal
        } else {
            return "0.0"
        }
        
        //nil cloascing
//        let bmivalueDecimal = String(format: "%.1f", bmiValue ?? "0.0")
//        return bmivalueDecimal
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateBMI(height: Float, weight: Float){
        let bmiValue = weight / (height * height)
        
        if bmiValue < 18.5 {
            bmi = Bmi(value: bmiValue, advice: "Eat more", color: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1))
        } else if bmiValue > 18.5 && bmiValue < 24.9{
            bmi = Bmi(value: bmiValue, advice: "Fit as a fiddle", color: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1))
        } else {
            bmi = Bmi(value: bmiValue, advice: "Eat less", color: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))
        }
   
    }
}
