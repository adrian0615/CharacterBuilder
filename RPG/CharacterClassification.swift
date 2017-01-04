//
//  CharacterClassification.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/3/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


public enum CharacterClassification : CustomStringConvertible {
    case none
    case eater
    case drinker
    
    public var description: String {
        switch self {
        case .none:
            return "None"
        case .eater:
            return "Eater"
        case .drinker:
            return "Drinker"
        }
    }
    
    
}
