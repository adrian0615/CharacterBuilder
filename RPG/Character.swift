//
//  Character.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/3/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


public class PlayerCharacter {
    public fileprivate(set) var name: String
    public let maxHealth = 50
    public fileprivate(set) var health: Int {
        didSet {
            if health < 0 {
                health = 0
            }
            if health > 50 {
                health = 50
            }
        }
    }
    
    public var maxMagic: Int
    public fileprivate(set) var magic: Int {
        didSet {
            if magic < 0 {
                magic = 0
            }
            if magic > 10 {
                magic = 10
            }
        }
    }
    
    public fileprivate(set) var points: Int {
        didSet {
            if points < 0 {
                points = 0
            }
            if points > 5 {
                points = 5
            }
        }
    }
    
    public var classification: CharacterClassification
    public var chewing: Int
    public var gulping: Int
    public var intake: Int
    
    
    public init(name: String, classification: CharacterClassification, maxMagic: Int, magic: Int, health: Int, points: Int) {
        self.name = name
        self.health = maxHealth
        self.maxMagic = 10
        self.magic = maxMagic
        self.points = points
        self.classification = classification
        self.intake = 0
        self.chewing = 0
        self.gulping = 0
    }
    
    public var status: Status {
        get {
            switch self.health {
            case 0:
                return Status.full
            default:
                return Status.normal
            }
        }
    }
    
    public var experience: Experience {
        get {
            switch self.points {
            case 0...1:
                return Experience.rookie
            case 2...4:
                return Experience.veteran
            default:
                return Experience.elite
            }
        }
    }
    
    public func takeDamage(_ amount: Int) {
        health -= amount
    }
    public func gainHealth(_ amount: Int) {
        health += amount
    }
    
    public func pointsTilNextExperienceLevel(_ points: Int) -> Int {
        let pointTotal = points
        
        if pointTotal == 0 || pointTotal == 3  {
            return 2
        } else if pointTotal == 1 || pointTotal == 4 {
            return 1
        } else if pointTotal == 2 {
            return 3
        } else {
            return 0
        }
        
    }
    
    public func determineStats() {
        if self.classification == .drinker {
            self.chewing = 2
            self.gulping = 4
            self.intake = 3
        }
        
        if self.classification == .eater {
            self.chewing = 4
            self.gulping = 1
            self.intake = 2
        }
        
        if self.classification == .none {
            self.chewing = 2
            self.gulping = 2
            self.intake = 4
        }
    }
}




