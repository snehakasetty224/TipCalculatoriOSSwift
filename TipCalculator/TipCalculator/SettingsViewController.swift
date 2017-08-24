//
//  SettingsViewController.swift
//  TipCalculator
//
//  Created by Sneha Kasetty Sudarshan on 8/23/17.
//  Copyright © 2017 Sneha Kasetty Sudarshan. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func savePressed(_ sender: Any) {
        
        UserDefaults.standard.setValue(defaultTipControl.selectedSegmentIndex, forKey: "tipindex")
        UserDefaults.standard.synchronize()
        
    }

}
