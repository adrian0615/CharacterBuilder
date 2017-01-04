//
//  CharacterTests.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/3/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import XCTest
import RPG


class CharacterClassificationTests: XCTestCase {
    func testTakeDamage() {
        let tim = PlayerCharacter(name: "Tim", classification: .eater, maxMagic: 10, magic: 10, health: 50)
        
        XCTAssertEqual(tim.health, 50)
        tim.takeDamage(10)
        XCTAssertEqual(tim.health, 40)
    }
    
    
    
    func testHealthTakeAndGain() {
        let lisa = PlayerCharacter(name: "Lisa", classification: .drinker, maxMagic: 10, magic: 10, health: 50)
        
        XCTAssertEqual(lisa.health, 50)
        lisa.takeDamage(20)
        XCTAssertEqual(lisa.health, 30)
        lisa.gainHealth(10)
        XCTAssertEqual(lisa.health, 40)
    }
    
    
    func testPointsToNextExperienceLevel() {
        let kujo = PlayerCharacter(name: "Kujo", classification: .drinker, maxMagic: 10, magic: 10, health: 50)
        
        let test = kujo.pointsTilNextExperienceLevel(0)
        let expected = 2
        XCTAssertEqual(test, expected)
        
        let test1 = kujo.pointsTilNextExperienceLevel(1)
        let expected1 = 1
        XCTAssertEqual(test1, expected1)
        
        let test2 = kujo.pointsTilNextExperienceLevel(2)
        let expected2 = 3
        XCTAssertEqual(test2, expected2)
        
        
        let test3 = kujo.pointsTilNextExperienceLevel(3)
        let expected3 = 2
        XCTAssertEqual(test3, expected3)
        
        let test4 = kujo.pointsTilNextExperienceLevel(4)
        let expected4 = 1
        XCTAssertEqual(test4, expected4)
        
        let test5 = kujo.pointsTilNextExperienceLevel(5)
        let expected5 = 0
        XCTAssertEqual(test5, expected5)
        
        
    }
}
