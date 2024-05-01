//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Armanda Correia Mendes on 17/03/2024.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var colour: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = colour
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        //dismiss current view controller and go back to previous screen
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
}
