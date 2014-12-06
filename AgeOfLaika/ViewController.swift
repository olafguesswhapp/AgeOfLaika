//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Olaf Peters on 06.12.14.
//  Copyright (c) 2014 Olaf Peters. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var labelDogYears: UILabel!
    @IBOutlet weak var convertButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ConvertYearsPressed(sender: UIButton) {
        var inputYears = inputTextField.text.toInt()!
        labelDogYears.text = "\(inputYears)" + " dog years convert to " + "\(inputYears*7)" + " human years"
        inputTextField.hidden = true
        inputTextField.resignFirstResponder()
        convertButton.hidden = true
        
    }

}

