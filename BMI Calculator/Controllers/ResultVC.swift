//
//  ResultVC.swift
//  BMI Calculator
//
//  Created by Supanut Laddayam on 2/4/2563 BE.
//  Copyright © 2563 Angela Yu. All rights reserved.
//

import UIKit

class ResultVC: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = color
        bmiLabel.text = bmiValue!
        adviceLabel.text = advice
    }
    @IBAction func recalculatePress(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
