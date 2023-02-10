//
//  ViewController.swift
//  Auto Layout and Stack Views
//
//  Created by Juliana Nielson on 1/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var calcLabel: UILabel!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var plusMinusButton: UIButton!
    @IBOutlet weak var percentButton: UIButton!
    @IBOutlet weak var divideButton: UIButton!
    @IBOutlet weak var timesButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var decimalButton: UIButton!
    @IBOutlet weak var equalsButton: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button0: UIButton!
    
    var inputNumber = String()
    var calculatedLabel = String()
    var doubleInput = Double()
    var intInput = Int()
    var percentNumber = String()
    var doublePercent = Double()
    var intPercent = Int()
    var isDouble = Bool()
    var doubleAdd = Double()
    var addNumber = String()
    var subtractNumber = String()
    var doubleSubtract = Double()
    var multiplyNumber = String()
    var doubleMultiply = Double()
    var divideNumber = String()
    var doubleDivide = Double()
    var hasLeftOver = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func clearButtonTapped(_ sender: UIButton) {
        calcLabel.text = "0"
        inputNumber = ""
        calculatedLabel = ""
        percentNumber = ""
        addNumber = ""
        subtractNumber = ""
        multiplyNumber = ""
        divideNumber = ""
        hasLeftOver = false
    }
    @IBAction func plusMinusButtonTapped(_ sender: UIButton) {
        if calcLabel.text!.contains("%") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("+") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text != "0" {
            calcLabel.text! += " - "
        }
        if calcLabel.text!.contains("x") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("÷") {
            calcLabel.text = inputNumber
        }
    }
    @IBAction func percentButtonTapped(_ sender: UIButton) {
        if calcLabel.text != "0" {
            calcLabel.text! += " % "
        }
        if calcLabel.text!.contains("+") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("-") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("x") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("÷") {
            calcLabel.text = inputNumber
        }
    }
    @IBAction func divideButtonTapped(_ sender: UIButton) {
        if calcLabel.text!.contains("%") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("+") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("-") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("x") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text != "0" {
            calcLabel.text! += " ÷ "
        }
    }
    @IBAction func timesButtonTapped(_ sender: UIButton) {
        if calcLabel.text!.contains("%") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("+") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("-") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text != "0" {
            calcLabel.text! += " x "
        }
        if calcLabel.text!.contains("÷") {
            calcLabel.text = inputNumber
        }
    }
    @IBAction func minusButtonTapped(_ sender: UIButton) {
        if calcLabel.text!.contains("%") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("+") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text != "0" {
            calcLabel.text! += " - "
        }
        if calcLabel.text!.contains("x") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("÷") {
            calcLabel.text = inputNumber
        }
    }
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        if calcLabel.text!.contains("%") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text != "0" {
            calcLabel.text! += " + "
        }
        if calcLabel.text!.contains("-") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("x") {
            calcLabel.text = inputNumber
        }
        if calcLabel.text!.contains("÷") {
            calcLabel.text = inputNumber
        }
    }
    @IBAction func decimalButtonTapped(_ sender: UIButton) {
        inputNumber += "."
        calcLabel.text! += "."
        calculatedLabel = inputNumber
    }
    @IBAction func equalsButtonTapped(_ sender: UIButton) {
        if calcLabel.text!.contains("%") {

            doubleInput = Double(inputNumber)!
            doublePercent = Double(percentNumber)!
            
            let calculateAssist = (doublePercent / 100.0) * doubleInput
            let completed = Int(calculateAssist)
            let completed2 = Double(completed)
            
            if doubleInput == 0 || doublePercent == 0 {
                calculatedLabel = "0"
            } else {
                if calculateAssist != completed2 {
                    calculatedLabel = String(calculateAssist)
                } else {
                    calculatedLabel = String(completed)
                }
            }
        }
        if calcLabel.text!.contains("+") {
            
            doubleInput = Double(inputNumber)!
            doubleAdd = Double(addNumber)!
            
            let calculateAssist = doubleInput + doubleAdd
            let completed = Int(calculateAssist)
            let completed2 = Double(completed)
            
            if calculateAssist != completed2 {
                calculatedLabel = String(calculateAssist)
            } else {
                calculatedLabel = String(completed)
            }
        }
        if calcLabel.text!.contains("-") {
            
            doubleInput = Double(inputNumber)!
            doubleSubtract = Double(subtractNumber)!
            
            let calculateAssist = doubleInput - doubleSubtract
            let completed = Int(calculateAssist)
            let completed2 = Double(completed)
            
            if calculateAssist != completed2 {
                calculatedLabel = String(calculateAssist)
            } else {
                calculatedLabel = String(completed)
            }
        }
        if calcLabel.text!.contains("x") {
            
            doubleInput = Double(inputNumber)!
            doubleMultiply = Double(multiplyNumber)!
            
            let calculateAssist = doubleInput * doubleMultiply
            let completed = Int(calculateAssist)
            let completed2 = Double(completed)
            
            if calculateAssist != completed2 {
                calculatedLabel = String(calculateAssist)
            } else {
                calculatedLabel = String(completed)
            }
        }
        if calcLabel.text!.contains("÷") {
            
            doubleInput = Double(inputNumber)!
            doubleDivide = Double(divideNumber)!
            
            let calculateAssist = doubleInput * doubleDivide
            let completed = Int(calculateAssist)
            let completed2 = Double(completed)
            
            if calculateAssist != completed2 {
                calculatedLabel = String(calculateAssist)
            } else {
                calculatedLabel = String(completed)
            }
        }
        calcLabel.text = calculatedLabel
        inputNumber = calculatedLabel
        percentNumber = ""
        hasLeftOver = true
    }
    @IBAction func button1Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text == "0" {
                inputNumber = "1"
                calcLabel.text = "1"
            } else {
                calcLabel.text! += "1"
                if calcLabel.text!.contains("%") {
                    percentNumber += "1"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "1"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "1"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "1"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "1"
                } else {
                    inputNumber += "1"
                }
            }
            calculatedLabel = inputNumber
        }
    }
    @IBAction func button2Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text == "0" {
                inputNumber = "2"
                calcLabel.text = "2"
            } else {
                calcLabel.text! += "2"
                if calcLabel.text!.contains("%") {
                    percentNumber += "2"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "2"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "2"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "2"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "2"
                } else {
                    inputNumber += "2"
                }
            }
            calculatedLabel = inputNumber
        }
    }
    @IBAction func button3Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text == "0" {
                inputNumber = "3"
                calcLabel.text = "3"
            } else {
                calcLabel.text! += "3"
                if calcLabel.text!.contains("%") {
                    percentNumber += "3"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "3"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "3"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "3"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "3"
                } else {
                    inputNumber += "3"
                }
            }
            calculatedLabel = inputNumber
        }
    }
    @IBAction func button4Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text == "0" {
                inputNumber = "4"
                calcLabel.text = "4"
            } else {
                calcLabel.text! += "4"
                if calcLabel.text!.contains("%") {
                    percentNumber += "4"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "4"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "4"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "4"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "4"
                } else {
                    inputNumber += "4"
                }
            }
            calculatedLabel = inputNumber
        }
    }
    @IBAction func button5Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text == "0" {
                inputNumber = "5"
                calcLabel.text = "5"
            } else {
                calcLabel.text! += "5"
                if calcLabel.text!.contains("%") {
                    percentNumber += "5"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "5"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "5"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "5"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "5"
                } else {
                    inputNumber += "5"
                }
            }
            calculatedLabel = inputNumber
        }
    }
    @IBAction func button6Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text == "0" {
                inputNumber = "6"
                calcLabel.text = "6"
            } else {
                calcLabel.text! += "6"
                if calcLabel.text!.contains("%") {
                    percentNumber += "6"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "6"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "6"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "6"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "6"
                } else {
                    inputNumber += "6"
                }
            }
            calculatedLabel = inputNumber
        }
    }
    @IBAction func button7Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text == "0" {
                inputNumber = "7"
                calcLabel.text = "7"
            } else {
                calcLabel.text! += "7"
                if calcLabel.text!.contains("%") {
                    percentNumber += "7"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "7"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "7"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "7"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "7"
                } else {
                    inputNumber += "7"
                }
            }
            calculatedLabel = inputNumber
        }
    }
    @IBAction func button8Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text == "0" {
                inputNumber = "8"
                calcLabel.text = "8"
            } else {
                calcLabel.text! += "8"
                if calcLabel.text!.contains("%") {
                    percentNumber += "8"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "8"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "8"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "8"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "8"
                } else {
                    inputNumber += "8"
                }
            }
            calculatedLabel = inputNumber
        }
    }
    @IBAction func button9Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text == "0" {
                inputNumber = "9"
                calcLabel.text = "9"
            } else {
                calcLabel.text! += "9"
                if calcLabel.text!.contains("%") {
                    percentNumber += "9"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "9"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "9"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "9"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "9"
                } else {
                    inputNumber += "9"
                }
            }
            calculatedLabel = inputNumber
        }
    }
    @IBAction func button0Tapped(_ sender: UIButton) {
        if hasLeftOver == true {
            calcLabel.text = "0"
            inputNumber = ""
            hasLeftOver = false
        } else {
            if calcLabel.text != "0" {
                calcLabel.text! += "0"
                if calcLabel.text!.contains("%") {
                    percentNumber += "0"
                } else if calcLabel.text!.contains("+") {
                    addNumber += "0"
                } else if calcLabel.text!.contains("-") {
                    subtractNumber += "0"
                } else if calcLabel.text!.contains("x") {
                    multiplyNumber += "0"
                } else if calcLabel.text!.contains("÷") {
                    divideNumber += "0"
                } else {
                    inputNumber += "0"
                }
            }
            calculatedLabel = inputNumber
        }
    }
}
