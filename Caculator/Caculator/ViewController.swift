//
//  ViewController.swift
//  Caculator
//
//  Created by CNTT on 3/26/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    
    @IBOutlet weak var callScreen: UILabel!
    var isFirst = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Button's Action
    
    @IBAction func btnPress(_ sender: UIButton) {
        let digit = sender.currentTitle!
        if isFirst{
            if digit != "0"{
                callScreen.text = digit
                isFirst = false
            }
        }else{
            let callScreenvalue = callScreen.text!
            callScreen.text = callScreenvalue + digit
        }
    }
    let calBrain = CaculatorBrain()
    @IBAction func functionCal(_ sender: UIButton) {
        let mathOperator = sender.currentTitle!
        let digit = Double(callScreen.text!)
        calBrain.setOperand(operand: digit!)
        calBrain.setOperator(mathOperator: mathOperator)
        
        callScreen.text = String(calBrain.result!)
        isFirst = true
    }
    
}

