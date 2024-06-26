//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Abiyyu Firmansyah on 17/05/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        
        let bmiFormatted = String(format: "%.1f", bmi?.value ?? "0.0")
        return bmiFormatted
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more bro", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "You fit as Goggins bro", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Stop eating bro", color: UIColor.red)
        }
    }
}
