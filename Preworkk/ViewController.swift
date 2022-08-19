//
//  ViewController.swift
//  Preworkk
//
//  Created by Mary Hanson on 8/19/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateTip(_ sender: Any) {
        //bill amount from text input
        let bill = Double(billAmountTextField.text!) ?? 0
        
        //get total tip -> bill total * percentage
        let tipPercentage = [0.15,0.18,0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip // add tip to orginal bill
        
        //update tip amount
        tipAmountLabel.text = String(format: "$%.2f", tip)
        //update total
        totalLabel.text = String(format: "$%.2f", total)
    }
    
}

