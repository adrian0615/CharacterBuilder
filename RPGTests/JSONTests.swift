//
//  JSONTests.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/15/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//



import XCTest
import RPG
import Foundation

class JSONTests: XCTestCase {
    
    func testJSON() {
        let character = PlayerCharacter(name: "Draygon", classification: .eater, maxMagic: 10, magic: 8, health: 40, points: 1)
        
        let json = JsonConvert()
        
        let dictTest = json.makeJSONAble(character: character)
        
        print("--------------------------")
        
        json.jsonTransfer(jsonDict: dictTest)
        
    }
}
