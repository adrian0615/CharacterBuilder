//
//  CharacterArray.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/3/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation



    
func charArray() -> PlayerCharacter {
    
    let draygon = PlayerCharacter(name: "Draygon", classification: .eater, maxMagic: 10, magic: 8, health: 40)
    let arriyon = PlayerCharacter(name: "Arriyon", classification: .drinker, maxMagic: 10, magic: 9, health: 40)
    let bob = PlayerCharacter(name: "Bob", classification: .none, maxMagic: 10, magic: 8, health: 30)
    var characterArray: [PlayerCharacter] = []
    var currentCharacter: PlayerCharacter
    
    characterArray.append(draygon)
    characterArray.append(arriyon)
    characterArray.append(bob)
    var charArray = characterArray.makeIterator()
    
    
    
    while let character = charArray.next() {
        currentCharacter = character
    }
    
    return currentCharacter
    
}
