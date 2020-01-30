//
//  ViewController.swift
//  ILoveTippers
//
//  Created by Noah Thompson on 1/29/20.
//  Copyright © 2020 Noah Thompson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billFeild: UITextField!
    @IBOutlet weak var tipLable: UILabel!
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }
    
    @IBAction func calcuateTip(_ sender: Any) {
        let bill = Double(billFeild.text!) ?? 0
        let tipPercentages = [0.15,0.18,0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLable.text = String(format: "$%.2f",tip)
        totalLable.text = String(format: "$%.2f",total)
    }
}

