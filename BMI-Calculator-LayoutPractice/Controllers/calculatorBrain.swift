//
//  calculatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by user197822 on 5/24/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain{
    var bmi : String?
    
    mutating func bmiCalculator(weight : Double, height: Double){
       bmi = String(format:"%.2f", weight/(height*height))
    }
    
    func getBmi() -> String{
        return bmi ?? ""
    }
    
}
