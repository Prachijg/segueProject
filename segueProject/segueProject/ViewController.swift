//
//  ViewController.swift
//  segueProject
//
//  Created by Apple on 14/10/22.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0
       var previousNumber:Double = 0
       var performMathOp = false
       var operation = 0
    @IBOutlet weak var calcLabel: UILabel!
    
    @IBAction func operandBtn(_ sender: UIButton) {
        
        if performMathOp == true{
                   calcLabel.text = String(sender.tag-1)
                   numberOnScreen = Double(calcLabel.text!)!
                   performMathOp = false
                   
                   
               }
               else{
                   calcLabel.text = calcLabel.text! + String(sender.tag-1)
                   numberOnScreen = Double(calcLabel.text!)!
               }
        
    }
    
    @IBAction func operatorBtn(_ sender: UIButton) {
        if calcLabel.text != "" && sender.tag != 15 && sender.tag != 16{
                    previousNumber=Double(calcLabel.text!)!
                    if sender.tag == 11//Add
                    {
                        calcLabel.text = "+"
                        
                        
                        
                    }
                    else if sender.tag == 12//Sub
                    {
                        calcLabel.text = "-"
                        
                    }
                    else if sender.tag == 13//divide
                    {
                        calcLabel.text = "/"
                        
                    }
                    else if sender.tag == 14//multiply
                    {
                        calcLabel.text = "*"
                        
                    }
                    operation = sender.tag
                    performMathOp = true
                }
                else if sender.tag == 15//else if statement for equal To Button
                {
                    
                    if operation == 11//add
                    {
                        calcLabel.text = String(previousNumber + numberOnScreen)
                    }
                    else if operation == 12//sub
                    {
                        calcLabel.text = String(previousNumber - numberOnScreen)
                    }
                    
                    else if operation == 13//divide
                    {
                        calcLabel.text = String(previousNumber / numberOnScreen)
                    }
                    else if operation == 14//multiply
                    {
                        calcLabel.text = String(previousNumber * numberOnScreen)
                    }
                    
                }else if sender.tag == 16//clear Button
                {
                    calcLabel.text = ""
                    previousNumber = 0
                    numberOnScreen = 0
                    operation = 0
                }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

