//
//  BalancedNumber.swift
//  Codewars
//
//  Created by Maxim Butin on 21.02.2020.
//  Copyright © 2020 Maxim Butin. All rights reserved.
//

import Foundation

public class BalancedNumber {
    
    static var instance = BalancedNumber()
    
    private init() { }
    
    func isBalanced(_ sumOne: Int, _ sumTwo: Int) -> String {
        return sumOne == sumTwo ? "Balanced" : "Not Balanced"
    }
    
    func evenBalanced(_ number: Int) -> String {
        let numericString = String(number)
        let countNumbers = numericString.count
        
        let center = countNumbers / 2
        
        let sumOne = numericString.prefix(center - 1).compactMap{ Int(String($0)) }.reduce(0, +)
        let sumTwo = numericString.substring(from: numericString.index(numericString.endIndex, offsetBy: (-center + 1))).compactMap{ Int(String($0)) }.reduce(0, +)
        return isBalanced(sumOne, sumTwo)
    }
    
    func oddBalanced(_ number: Int) -> String {
        let numericString = String(number)
        let countNumbers = numericString.count
        
        let center = countNumbers / 2
        
        let sumOne = numericString.prefix(center).compactMap{ Int(String($0)) }.reduce(0, +)
        let sumTwo = numericString.substring(from: numericString.index(numericString.endIndex, offsetBy: (-center))).compactMap{ Int(String($0)) }.reduce(0, +)
        print(sumOne, sumTwo)
        return isBalanced(sumOne, sumTwo)
    }
    
    func balancedNumber(_ number: Int) -> String {
        let stringNumber = String(number)
        let count = stringNumber.count
        if number < 100 {
            return "Balanced"
        } else if count % 2 == 0 {
            return evenBalanced(number)
        } else if count % 2 == 1 {
            return oddBalanced(number)
        }
        return ""
    }
    
}
