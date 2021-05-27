//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateView: UIViewController {
    
    var calculateBrain = CalculatorBrain()
    @IBOutlet weak var weightSlider: UISlider!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heighLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSliderChanged(_ sender: UISlider) {
        heighLabel.text = String(format:"%.2f",sender.value)+" m"
    }
    
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        weightLabel.text = String(Int(sender.value)) + " kg"
        
    }
    @IBAction func calculatePressed(_ sender: UIButton) {
        let height:Double = Double(String(format: "%.2f", heightSlider.value))!
        let weight:Double = Double(weightSlider.value)
        
        calculateBrain.bmiCalculator(weight: weight, height: height)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dest = segue.destination as! BmiResultViewController
        dest.bmi = calculateBrain.getBmi()
        dest.advice = calculateBrain.getAdvice()
        dest.color = calculateBrain.getColor()
    }
}

