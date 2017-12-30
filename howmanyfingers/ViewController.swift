//
//  ViewController.swift
//  howmanyfingers
//
//  Created by Chauncey McCormick on 4/26/17.
//  Copyright © 2017 WONDERBOARD, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberGuessed = 3
    
    @IBOutlet weak var numFingers: UILabel!

    @IBOutlet weak var stepperControl: UIStepper!
    
    @IBOutlet weak var resultLabel: UILabel!
    

    @IBAction func StepperClick(_ sender: UIStepper) {
        
        numberGuessed = Int(stepperControl.value)
        if numberGuessed > 5 {
            stepperControl.value = 0
            numberGuessed = 0
        }
            numFingers.text = "\(numberGuessed)"
    }
    
    @IBAction func guessButtonClick(_ sender: UIButton) {
        
        let randomNumber = Int(arc4random_uniform(6))
        if numberGuessed == randomNumber {
            resultLabel.text = "Congrats!"
        }
        else {
            resultLabel.text = "Sorry"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

