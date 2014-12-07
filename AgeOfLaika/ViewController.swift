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
    @IBOutlet weak var convert2ndButton: UIButton!

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
        labelDogYears.text = "\(inputYears)" + " human years convert to " + "\(inputYears*7)" + " dog years"
        inputTextField.hidden = true
        inputTextField.resignFirstResponder()
        convertButton.hidden = true
    }
    @IBAction func ConvertNewYearsPressed(sender: UIButton) {
        var dogYears:Double
        var inputYears = inputTextField.text.toInt()!
        
        if inputYears <= 2 {
            dogYears = Double(inputYears) * 10.5
        }
        else {
            dogYears = (2*10.5) + (Double(inputYears)-2) * 4
        }
        labelDogYears.text = "\(inputYears)" + " human years correspond to " + "\(dogYears)" + " dog years"
        inputTextField.hidden = true
        inputTextField.resignFirstResponder()
        convert2ndButton.hidden = true
    }
    

}

