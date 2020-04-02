//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculatorBrain.getBMIValue()
    }
    
    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        let value = String(format: "%.2f", sender.value)
        heightLabel.text = "\(value)m"
        
        
    }
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        
        weightLabel.text = "\(Int(sender.value))Kg"
    }
    @IBAction func calculateButtonPress(_ sender: UIButton) {
        
        calculatorBrain.calculateBMI(height: heightSlider.value, weight: weightSlider.value)

        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultVC
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getBMIValue()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
}

