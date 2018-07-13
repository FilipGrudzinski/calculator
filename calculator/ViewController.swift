//
//  ViewController.swift
//  calculator
//
//  Created by Filip on 11.07.2018.
//  Copyright © 2018 Filip. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numberOnScreen:Double = 0
    var oldNumber:Double = 0
    var performingMath = false
    var operation = 0
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if performingMath == true {
            
            label.text = String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
            
        } else {
           
            label.text = label.text! + String(sender.tag - 1)
            numberOnScreen = Double(label.text!)!
            
        }
 
    }
    
    @IBAction func mathButton(_ sender: UIButton) {
        
        
        if label.text != "" && sender.tag != 17 && sender.tag != 12 {
            
            oldNumber = Double(label.text!)!
            
            if sender.tag == 13 { // Addition
               
                label.text = "+"
                
            }
            else if sender.tag == 14 { //Substraction
                
                label.text = "-"
 
            }
            else if sender.tag == 15 { // Multiplication
                
                label.text = "*"
           
            }
            else if sender.tag == 16 { // Division
                
                label.text = "/"
                
            }
            performingMath = true
            operation = sender.tag
            
        }
        else if sender.tag == 12 {
           
            if operation == 13 {
                
                label.text = String(oldNumber + numberOnScreen)
                
            }
            else if operation == 14 {
                
                label.text = String(oldNumber - numberOnScreen)
                
            }
            else if operation == 15 {
                
                label.text = String(oldNumber * numberOnScreen)
                
            }
            else if operation == 16 {
                
                label.text = String(oldNumber / numberOnScreen)
                
            }
            
        }
        else if sender.tag == 17 {
            
            label.text = ""
            numberOnScreen = 0
            oldNumber = 0
            operation = 0
            
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

