//
//  BalancedNumeric.swift
//  CodewarsTest
//
//  Created by Maxim Butin on 21.02.2020.
//  Copyright © 2020 Maxim Butin. All rights reserved.
//

import XCTest
@testable import Codewars

class BalancedNumericTest: XCTestCase {
    
    // MARK: - Test when count in numbers are even
    func testEvenBalancedNumeric() {
        
        // Balance
        XCTAssertEqual(BalancedNumber.instance.evenBalanced(3223), "Balanced")
        XCTAssertEqual(BalancedNumber.instance.evenBalanced(56239814), "Balanced")
        
        // Not balanced
        XCTAssertEqual(BalancedNumber.instance.evenBalanced(322365), "Not Balanced")
        XCTAssertEqual(BalancedNumber.instance.evenBalanced(562398141245), "Not Balanced")
    }
    
    // MARK: - Test when count in numbers are odd
    func testOddBalancedNumeric() {
        
        // Balance
        XCTAssertEqual(BalancedNumber.instance.oddBalanced(959), "Balanced")
        XCTAssertEqual(BalancedNumber.instance.oddBalanced(424), "Balanced")
        
        // Not balanced
        XCTAssertEqual(BalancedNumber.instance.oddBalanced(3220321), "Not Balanced")
        XCTAssertEqual(BalancedNumber.instance.oddBalanced(3258974), "Not Balanced")
    }
    
    // MARK: - Balanced Test
    func testBalanced() {
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(7), "Balanced")
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(959), "Balanced")
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(13), "Balanced")
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(56239814), "Balanced")
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(424), "Balanced")
    }
    
    func testNotBalanced() {
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(1024), "Not Balanced")
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(66545), "Not Balanced")
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(295591), "Not Balanced")
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(1230987), "Not Balanced")
        XCTAssertEqual(BalancedNumber.instance.balancedNumber(432), "Not Balanced")
    }
    
}
