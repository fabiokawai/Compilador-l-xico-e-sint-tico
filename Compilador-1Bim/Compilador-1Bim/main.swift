//
//  main.swift
//  Compilador-1Bim
//
//  Created by Fabio Kawai on 15/03/2018.
//  Copyright © 2018 Fabio Kawai. All rights reserved.
//

import Foundation

var tokenized:[String] = []

let returnFromInput = InputOperation()

let returnedTokens = TokenConversion(text: returnFromInput.receiveInput())
tokenized = returnedTokens.runConversion()
print("Tokenizado:\r \(tokenized)", terminator: "\r\r")

let syntactitAnalysis = SyntacticAnalysis(text: tokenized)
syntactitAnalysis.testSyntactical()

