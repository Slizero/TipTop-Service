//
//  ViewController.swift
//  TipNotch
//
//  Created by Rashadul Islam on 12/14/20.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Retrieve Bill Amount
        let bill = Double(billField.text!) ?? 0
        //Calculate tip and total
        let tipRanges = [0.15 , 0.18, 0.20]
        let tip = bill * tipRanges[tipControl.selectedSegmentIndex]
        let total = bill + tip
        //Update totals on display
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }
}

