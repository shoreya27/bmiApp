//
//  BmiResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by user197822 on 5/23/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit

class BmiResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    var bmi : String?
    var color : UIColor?
    var advice : String?
    
    @IBOutlet weak var bmiLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = bmi
        // Do any additional setup after loading the view.
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
