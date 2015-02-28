//
//  ViewController.swift
//  Is It Prime?
//
//  Created by Ian Andersen on 2/28/15.
//  Copyright (c) 2015 Clarity. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var inputField: UITextField!
    @IBOutlet var result: UILabel!
    
    @IBAction func pushButton(sender: AnyObject) {
        var input = inputField.text.toInt()
        
        if input != nil {
            var unwrappedInput = input!
            
            if unwrappedInput == 1 {
                result.text = "No"
            }
            
            if unwrappedInput != 2 && unwrappedInput != 1 {
                for var i = 2; i < unwrappedInput; i++ {
                    if unwrappedInput % i == 0 {
                        println(unwrappedInput)
                        result.text = "No"
                        break
                    } else {
                        result.text = "Yes"
                    }
                }
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

