//
//  Experience.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/3/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


public enum Experience : CustomStringConvertible {
    case rookie
    case veteran
    case elite
    
    public var description: String {
        switch self {
        case .rookie:
            return "Rookie"
        case .veteran:
            return "Veteran"
        case .elite:
            return "Elite"
        }
    }
}
