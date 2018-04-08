//
//  syntacticAnalysis.swift
//  Compilador-1Bim
//
//  Created by Fabio Kawai on 07/04/2018.
//  Copyright © 2018 Fabio Kawai. All rights reserved.
//

import Foundation



class SyntacticAnalysis{
    
    var inputArray:[String]
    
    var isSyntacticallyOk : Bool = true
    
    
    init (text:[String]){
        self.inputArray = text
    }
    
    func testSyntactical(){
        for x in inputArray.startIndex...inputArray.endIndex-1{
            switch inputArray[x]{
            case "TOK_BEGIN":
                if (inputArray[x+1]=="TOK_NUM" || inputArray[x+1]=="TOK_SUB" || inputArray[x+1]=="TOK_PAR_OPEN" || inputArray[x+1]=="TOK_END"){
                    print ("✅TOK_BEGIN")
                }
                else{
                    isSyntacticallyOk = false
                    print ("⚠️TOK_BEGIN")
                }
            case "TOK_END":
                if (inputArray[x-1]=="TOK_NUM" || inputArray[x-1]=="TOK_PAR_CLOSE" || inputArray[x-1]=="TOK_BEGIN"){
                    print ("✅TOK_END")
                }
                else{
                    isSyntacticallyOk = false
                    print ("⚠️TOK_END")
                }
            case "TOK_SUB":
                if (inputArray[x-1]=="TOK_NUM" || inputArray[x-1]=="TOK_PAR_CLOSE" || inputArray[x-1]=="TOK_PAR_OPEN" || inputArray[x-1]=="TOK_BEGIN"){
                    if (inputArray[x+1]=="TOK_NUM" || inputArray[x+1]=="TOK_PAR_OPEN"){
                        print ("✅TOK_SUB")
                    }
                    else{
                        print ("⚠️TOK_SUB")
                        isSyntacticallyOk = false
                    }
                }
                else {
                    print ("⚠️TOK_SUB")
                    isSyntacticallyOk = false
                }
            case "TOK_OPE":
                if (inputArray[x-1]=="TOK_NUM" || inputArray[x-1]=="TOK_PAR_CLOSE"){
                    if (inputArray[x+1]=="TOK_NUM" || inputArray[x+1]=="TOK_PAR_OPEN"){
                        print ("✅TOK_OPE")
                    }
                    else {
                        print ("⚠️TOK_OPE")
                        isSyntacticallyOk = false
                    }
                }
                else {
                    print ("⚠️TOK_OPE")
                    isSyntacticallyOk = false
                }
            case "TOK_NUM":
                if (inputArray[x-1]=="TOK_NUM" || inputArray[x-1]=="TOK_OPE" || inputArray[x-1]=="TOK_SUB" || inputArray[x-1]=="TOK_PAR_OPEN" || inputArray[x-1]=="TOK_BEGIN"){
                    if (inputArray[x+1]=="TOK_NUM" || inputArray[x+1]=="TOK_OPE" || inputArray[x+1]=="TOK_SUB" || inputArray[x+1]=="TOK_PAR_CLOSE" || inputArray[x+1]=="TOK_END"){
                        print ("✅TOK_NUM")
                    }
                    else {
                        print ("⚠️TOK_NUM")
                        isSyntacticallyOk = false
                    }
                }
                else {
                    print ("⚠️TOK_NUM")
                    isSyntacticallyOk = false
                }
            default:
                print ("TOKEN \(inputArray[x]) AINDA NÃO SENDO VERIFICADO")
            }//switch
        }//for
    }//func
    
    
    
}
