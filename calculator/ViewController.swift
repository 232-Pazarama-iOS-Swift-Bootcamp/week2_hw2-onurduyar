//
//  ViewController.swift
//  calculator
//
//  Created by Onur Duyar on 2.10.2022.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var valuesWithOperationLabel: UILabel!
    var runningNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation: Operations = .NULL
    var array = [String]()
    override func viewDidLoad() {
        
        super.viewDidLoad()
        outputLabel.isHidden = true
        valuesWithOperationLabel.isHidden = true
        
    }
    @IBAction func numberPressed( _ sender: UIButton) {
        outputLabel.isHidden = false
        runningNumber += "\(sender.tag)"
        outputLabel.text = runningNumber
        
      
    }
    @IBAction func allClearPressed( _ sender: UIButton) {
        runningNumber = ""
        rightValue = ""
        leftValue = ""
        result = ""
        currentOperation = .NULL
        outputLabel.text = ""
        outputLabel.isHidden = true
        array.removeAll()
        valuesWithOperationLabel.text = ""
        
    }
    @IBAction func dotPressed( _ sender: UIButton) {
        runningNumber += "."
        outputLabel.text = runningNumber
    }
    @IBAction func equalPressed( _ sender: UIButton) {
        operation(operation: currentOperation)
        valuesWithOperationLabel.isHidden = false
      
    }
    @IBAction func addPressed( _ sender: UIButton) {
        operation(operation: .Add)
    }
    @IBAction func subtractPressed( _ sender: UIButton) {
        operation(operation: .Subtract)
    }
    @IBAction func multiplyPressed( _ sender: UIButton) {
        operation(operation: .Multiply)
    }
    @IBAction func dividePressed( _ sender: UIButton) {
        operation(operation: .Divide)
    }
    @IBAction func SquareRootPressed( _ sender: UIButton) {
        leftValue = runningNumber
        result = "\(sqrt(Double(leftValue)!))"
        valuesWithOperationLabel.isHidden = false
        valuesWithOperationLabel.text = "√\(leftValue)"
        outputLabel.text = result
       
    }
    @IBAction func logPressed( _ sender: UIButton) {
        leftValue = runningNumber
        result = "\(log(Double(leftValue)!))"
        valuesWithOperationLabel.isHidden = false
        valuesWithOperationLabel.text = "ln\(leftValue)"
        outputLabel.text = result
    }
    @IBAction func twoPowerPressed( _ sender: UIButton) {
        leftValue = runningNumber
        result = "\(pow(Decimal(Int(leftValue)!), 2))"
        valuesWithOperationLabel.isHidden = false
        valuesWithOperationLabel.text = "\(leftValue)\u{B2}"
        outputLabel.text = result
    }
    @IBAction func modPressed( _ sender: UIButton) {
        operation(operation: .Mod)
    }
    func operation(operation: Operations){
        
        if currentOperation != .NULL {
            
            if runningNumber != "" {
                rightValue = runningNumber
                array.append(rightValue)
                runningNumber = ""
                
                if currentOperation == .Add {
                    result = "\(Double(leftValue)! + Double(rightValue)!)"
                } else  if currentOperation == .Subtract {
                    result = "\(Double(leftValue)! - Double(rightValue)!)"
                } else if currentOperation == .Multiply {
                    result = "\(Double(leftValue)! * Double(rightValue)!)"
                } else if currentOperation == .Divide {
                    result = "\(Double(leftValue)! / Double(rightValue)!)"
                }else if currentOperation == .Mod {
                    result = "\(Double(leftValue)!.truncatingRemainder(dividingBy: Double(rightValue)!))"
                }
                
                valuesWithOperationLabel.text = "\(leftValue) \(currentOperation.rawValue) \(rightValue)"
                leftValue = result
                
                
                outputLabel.isHidden = false
                outputLabel.text = result
            }
            
            currentOperation = operation
            
        } else {
            leftValue = runningNumber
            array.append(leftValue)
            runningNumber = ""
            currentOperation = operation
        }
        print(array)
    }
    
}

