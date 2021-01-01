//
//  ViewController.swift
//  Tip
//
//  Created by Travis Nguyen on 12/31/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var tipSlider: UISlider!
    
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill
        //?? means if not valid then will be 0
        let bill = Double(billField.text!) ?? 0
        
        //Calc tip and total
        let tipPercentagesDouble = Double(tipSlider.value)
        let tipPercentagesInt = Int(tipPercentagesDouble * 100)
        
        let tip = bill * ( Double(tipPercentagesInt) / 100 )
        let total = bill + tip
        
        //Update tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        tipPercentLabel.text = String(format: "%d%%", tipPercentagesInt)
    }
}

