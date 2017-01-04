//
//  Status.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/3/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation


public enum Status : CustomStringConvertible {
    case normal
    case full
    
    public var description: String {
        switch self {
        case .normal:
            return "Ready for Consumption"
        case .full:
            return "Full"
        }
    }
}
