//
//  CaculatorBrain.swift
//  Caculator
//
//  Created by CNTT on 4/2/21.
//  Copyright © 2021 fit.tdc. All rights reserved.
//

import Foundation


class CaculatorBrain{
    private var accumulator:Double?
    
    func setOperand(operand: Double){
        accumulator = operand
    }
    func setOperator(mathOperator: String){
        
        switch mathOperator {
        case "∏":
             result = Double.pi
        case "℮":
            result = M_E
        case "√":
            if let Value = accumulator{
                result = sqrt(Value)
            }
            
        default:
            result = 0
        }
    }
    
    var  result:Double?
}
