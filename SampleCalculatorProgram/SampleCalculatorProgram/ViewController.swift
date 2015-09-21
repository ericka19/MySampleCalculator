//
//  ViewController.swift
//  SampleCalculatorProgram
//
//  Created by Ericka Limpengco on 9/21/15.
//  Copyright (c) 2015 Ericka Limpengco. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//declare variables
   
    @IBOutlet weak var calculatorDisplay: UILabel!
    
    var isTypingNumber = false
    
    var firstNumber:Int!
    var secondNumber:Int!
    var operation = ""
    var result = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firstNumber = 0
        secondNumber = 0
    }
    
    
    //declare methods
    
  
   
    //method when the user tap the Clear button
    
    @IBAction func clearTapped(sender: AnyObject) {
       
        calculatorDisplay.text = "0"
        result = 0
    }
    
    
    //method when the user tap the numbers
    @IBAction func numberTapped(sender: AnyObject) {
       
        //currentTitle is the Title I set in the button
        var number = sender.currentTitle
        
        if isTypingNumber {
            calculatorDisplay.text = calculatorDisplay.text! + number!!
        } else {
            calculatorDisplay.text = number
            isTypingNumber = true
        }
        
    }
    
    //method whne the user tap the different operations eg. /, + , - , *
    
    @IBAction func calculationTapped(sender: AnyObject) {
       
        isTypingNumber = false
        firstNumber = calculatorDisplay.text?.toInt()!
       // firstNumber = (calculatorDisplay as NSString).doubleValue


        operation = sender.currentTitle!!
    }
    
    @IBAction func equalsTapped(sender: AnyObject) {
       
        isTypingNumber = false
        result = 0
        secondNumber = calculatorDisplay.text?.toInt()!
        
        if operation == "+" {
            result = firstNumber + secondNumber
        } else if operation == "-" {
            result = firstNumber - secondNumber
        }
        else if operation == "x" {
            result = firstNumber * secondNumber
        }
        else if operation == "/" {
            result = firstNumber / secondNumber
        }
        
     
        
        calculatorDisplay.text = "\(result)"
    
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    

}

