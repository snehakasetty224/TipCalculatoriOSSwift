//
//  ViewController.swift
//  TipCalculator
//
//  Created by Sneha Kasetty Sudarshan on 8/23/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        if UserDefaults.standard.object(forKey: "tipindex") != nil {
            
            let index = UserDefaults.standard.object(forKey: "tipindex") as! Int
            
            tipControl.selectedSegmentIndex = index;
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: Any) {
        
        let tippercentage = [0.18, 0.2 ,0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tippercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "%.2f", tip)
        totalLabel.text = String(format: "%.2f", total)
    }

}

