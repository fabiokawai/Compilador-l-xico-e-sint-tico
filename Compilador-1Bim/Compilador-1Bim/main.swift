//
//  main.swift
//  Compilador-1Bim
//
//  Created by Fabio Kawai on 15/03/2018.
//  Copyright © 2018 Fabio Kawai. All rights reserved.
//

import Foundation

let returnFromInput = InputOperation()

let returnedTokens = TokenConversion(text: returnFromInput.receiveInput())

let syntactitAnalysis = SyntacticAnalysis(text: returnedTokens.runConversion())

switch syntactitAnalysis.isParenthesesOK{
case true:
    print ("\r✅ Abertura/Fechamento de parenteses", terminator: "\r\r")
case false:
    print ("\r⚠️ Abertura/Fechamento de parenteses", terminator: "\r\r")
}

switch returnedTokens.isLexicallyOK{
case true:
    print ("✅ Análise Léxica")
case false:
    print ("⚠️ Análise Léxica")
}

switch syntactitAnalysis.isSyntacticallyOk{
case true:
    print ("✅ Análise Sintática", terminator:"\r\r")
case false:
    print ("⚠️ Análise Sintática", terminator:"\r\r")
}
