//
//  NumberCheck.swift
//  ZinksAdventure
//
//  Created by Jeff Yardley on 12/19/18.
//  Copyright © 2018 Jeff Yardley. All rights reserved.
//

import Foundation
import UIKit

/*
let fm = FileManager.default
let bundleURL = Bundle.main.bundleURL
let path = Bundle.main.resourcePath!
let items = try! fm.contentsOfDirectory(atPath: path)

let assetURL = bundleURL.appendingPathComponent("tiles.bundle")
let imageContents = try! fm.contentsOfDirectory(at: assetURL, includingPropertiesForKeys: [URLResourceKey.nameKey, URLResourceKey.isDirectoryKey], options: .skipsHiddenFiles)
*/

/*
for item in imageContents
{
    print(item.lastPathComponent)
}
*/




struct Stack{
    fileprivate var array: [String] = []
    
    mutating func push(_ element: String){
        array.append(element)
    }
    
    mutating func pop() -> String?{
        return array.popLast()
    }
    
    func peek() -> String?{
        return array.last
    }
    
    func isEmpty() -> Bool{
        return array.isEmpty
    }
    
    func emptyStack() -> [String]{
        return array.reversed()
    }
    
    var count: Int {
        return array.count
    }
    
    
}




class NumberCheck: ViewController {
    
    //Converts Score from base 10 into base(how ever many jewels there are).
    //Right now, it's base 15...
    func ShowTileNumber(score: Int) -> [String] {
        
        //print("score: \(score)")
        var imageStringArray: [String?] = []
        //var remainderArray: [Int] = []
        //Create Stack to store remainders...
        var remainderStack = Stack()
        
        //var wholeNumberArray: [Int] = []
        var wholeNumber: Int = score
        var remainder: Int = 0
        
        //Remainder digits are all of the "digits" in the number system.
        //In this case, each "digit" is an image string to be displayed on a label..
        //let remainderDigits: Array = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","AA","BB","CC","DD","EE","FF","GG","HH","II","JJ","KK","LL","MM","NN","OO","PP","QQ","RR","SS","TT","UU","VV","WW","XX","YY","ZZ","aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","mm","nn","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","AA","BB","CC","DD","EE","FF","GG","HH","II","JJ","KK","LL","MM","NN","OO","PP","QQ","RR","SS","TT","UU","VV","WW","XX","YY","ZZ","aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","mm","nn","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","AA","BB","CC","DD","EE","FF","GG","HH","II","JJ","KK","LL","MM","NN","OO","PP","QQ","RR","SS","TT","UU","VV","WW","XX","YY","ZZ","aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","mm","nn","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","AA","BB","CC","DD","EE","FF","GG","HH","II","JJ","KK","LL","MM","NN","OO","PP","QQ","RR","SS","TT","UU","VV","WW","XX","YY","ZZ","aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","mm","nn","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","AA","BB","CC","DD","EE","FF","GG","HH","II","JJ","KK","LL","MM","NN","OO","PP","QQ","RR","SS","TT","UU","VV","WW","XX","YY","ZZ","aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","mm","nn","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","AA","BB","CC","DD","EE","FF","GG","HH","II","JJ","KK","LL","MM","NN","OO","PP","QQ","RR","SS","TT","UU","VV","WW","XX","YY","ZZ","aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","mm","nn","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","AA","BB","CC","DD","EE","FF","GG","HH","II","JJ","KK","LL","MM","NN","OO","PP","QQ","RR","SS","TT","UU","VV","WW","XX","YY","ZZ","aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","mm","nn","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","AA","BB","CC","DD","EE","FF","GG","HH","II","JJ","KK","LL","MM","NN","OO","PP","QQ","RR","SS","TT","UU","VV","WW","XX","YY","ZZ","aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","mm","nn","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz","0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","AA","BB","CC","DD","EE","FF","GG","HH","II","JJ","KK","LL","MM","NN","OO","PP","QQ","RR","SS","TT","UU","VV","WW","XX","YY","ZZ","aa","bb","cc","dd","ee","ff","gg","hh","ii","jj","kk","ll","mm","nn","oo","pp","qq","rr","ss","tt","uu","vv","ww","xx","yy","zz"]
        //var remainderDigits: Array = imageContents
        var remainderDigits: Array = [String]()
        
        for item in imageContents {
            remainderDigits.append(String(describing: item.lastPathComponent))
                //print(item.lastPathComponent)
        }
        
        
        let base: Int = remainderDigits.count
        
        
        
        if(score == base){
            imageStringArray.append(remainderDigits[score-1])
        }else if(score < base){
            imageStringArray.append(remainderDigits[score])
        }else{
            wholeNumber = score
            remainder = score % base
            //print("First: \(wholeNumber) \\ \(base): \(remainder)")
            remainderStack.push(String(describing: remainder))
            while(wholeNumber != 0){
                wholeNumber = wholeNumber / base
                remainder = wholeNumber % base
                
                if(wholeNumber != 0){
                    remainderStack.push(String(describing: remainder))
                    //print("Second: \(wholeNumber) \\ \(base): \(remainder)")
                }
            }
            
            //Print remainder stack for debugging purposes...
            //print(remainderStack)
            
            //Empty the Stack, which is the reversed array that was created...
            let remainderStackArray = remainderStack.emptyStack()
            for element in remainderStackArray{
                imageStringArray.append(remainderDigits[Int(element)!])
            }
            
            
        }
        
        
        return imageStringArray as! [String]
        
    }
    
    
}

