//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by Can ULUBAŞ on 19.05.2022.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculaterBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
     
    }

    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    func getColor() -> UIColor {
        
        return bmi?.color ?? UIColor.white
    }
    mutating func calculateBMI(height:Float,weight:Float){
        
        let bmiValue = weight/(height * height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Ear more pies", color: UIColor.blue)
        }else if  bmiValue < 24.9{
            bmi = BMI(value: bmiValue, advice: "fit as a fiddle!", color: UIColor.green)
        }else {
            bmi = BMI(value: bmiValue, advice: "eat less pies!", color: UIColor.red)
        }
        
    }
    
}
