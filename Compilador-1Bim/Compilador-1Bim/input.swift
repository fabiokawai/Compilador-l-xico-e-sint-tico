//
//  input.swift
//  Compilador-1Bim
//
//  Created by Fabio Kawai on 04/04/2018.
//  Copyright © 2018 Fabio Kawai. All rights reserved.
//

import Foundation

class InputOperation{
    
    var input:String = ""
    
    func receiveInput() -> [Character]{
        
        print("Digite a equação a ser compilada:", terminator:" ")
        
        //input = "12+ 4*(3+ 9)-0i"
        input = readLine()!
        
        input = input.replacingOccurrences(of: " ", with: "")
        
        print ("\rEquação: \(input)", terminator:"\r\r")
        
        let inputArray = Array(input)
        
        return inputArray
    }
}
