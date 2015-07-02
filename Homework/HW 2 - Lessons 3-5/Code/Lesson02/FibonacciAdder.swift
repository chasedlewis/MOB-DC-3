//
//  FibonacciAdder.swift
//  Lesson02
//
//  Created by Chase Lewis on 7/1/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class FibonacciAdder {
    
    func fibonacciNumber(textFieldNumber: Int) -> Int {
        
        var retVal: Int = 0
        for i in 0...textFieldNumber {
            
            if i == 0 {
                retVal = 0
            } else if i == 1 {
                retVal = 1
            } else {
                retVal = fibonacciNumber(i - 1) + fibonacciNumber(i - 1)
            }
        }
        
        return retVal
    }
}


