//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Armanda Correia Mendes on 17/03/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit
struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {

        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
            
        
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColour() -> UIColor {
        return bmi?.colour ?? UIColor.white
    }
    
  mutating  func calculateBMI(height: Float, weight: Float) {
     
      // literal can be addded to tuples
      
      let color = (underweight: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1), healthy: #colorLiteral(red: 0, green: 0.5603182912, blue: 0, alpha: 1), overweight: #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1))

      let bmiValue = weight / (height * height)
      if bmiValue < 18.5{
          bmi = BMI(value: bmiValue, advice: "Incorporate more meals!", colour: color.underweight )
          
      } else if bmiValue < 24.9 { // you don't need an && as if statement has already checked previous value
          bmi = BMI(value: bmiValue, advice: "You are Fit!", colour: color.healthy)
      } else {
          bmi = BMI(value: bmiValue, advice: "You need more exercise", colour: color.overweight)
      }
    
    }
    
    
}
