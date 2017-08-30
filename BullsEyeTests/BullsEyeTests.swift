//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Rodrigo López-Romero Guijarro on 30/08/2017.
//  Copyright © 2017 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
    
    var gameUnderTest: BullsEyeGame!

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        gameUnderTest = nil
    }
    
    func testScoreIsComputed() {
        let guess = gameUnderTest.targetValue + 5
        _ = gameUnderTest.check(guess: guess)
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
    
}
