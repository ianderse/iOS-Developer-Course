//
//  ViewController.swift
//  Guessing Game
//
//  Created by Ian Andersen on 2/24/15.
//  Copyright (c) 2015 Clarity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var userInput: UITextField!
    @IBOutlet var result: UILabel!
    @IBAction func pushGuessButton(sender: AnyObject) {
        var randNum = arc4random_uniform(11)
        var guess = userInput.text.toInt()
        if guess != nil {
            if guess == Int(randNum) {
                result.text = "Correct!"
            } else {
                result.text = "Wrong! It was \(randNum)"
            }
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

