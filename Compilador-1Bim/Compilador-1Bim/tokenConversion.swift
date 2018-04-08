//
//  lexicalAnalysis.swift
//  Compilador-1Bim
//
//  Created by Fabio Kawai on 04/04/2018.
//  Copyright © 2018 Fabio Kawai. All rights reserved.
//

import Foundation

class TokenConversion{
    
    let numbers:[String] = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    let operators:[String] = ["+", "/", "*"]
    
    var inputArray:[Character] = []
    var output:[String] = []
    var isLexicallyOK:Bool = true
    
    
    init (text:[Character]){
        self.inputArray = text
    }
    
    func runConversion() -> [String]{
        output.append("TOK_BEGIN")
        for values in inputArray{
            if numbers.contains(values.description){
                output.append("TOK_NUM")
            }
            else if operators.contains(values.description){
                output.append("TOK_OPE")
            }
            else if (values.description == "("){
                output.append("TOK_PAR_OPEN")
            }
            else if (values.description == ")"){
                output.append("TOK_PAR_CLOSE")
            }
            else if (values.description == "-"){
                output.append("TOK_SUB")
            }
            else{
                output.append("TOK_INVALID")
                isLexicallyOK = false
            }
        }
        output.append("TOK_END")
        
        //Resultados dos testes
        switch isLexicallyOK{
        case true:
            print ("✅ Análise Léxica")
        case false:
            print ("⚠️ Análise Léxica")
        }
        
        return output
    }

}
