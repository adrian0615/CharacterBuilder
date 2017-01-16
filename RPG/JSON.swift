//
//  JSON.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/10/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import Foundation

public struct JsonConvert {
    
    public init() {
    }

    
    public func makeJSONAble(character: PlayerCharacter) -> [String: Any] {
        var playerDict: [String: Any] = [:]
        
        playerDict["name"] = character.name
        playerDict["health"] = character.health
        playerDict["maxMagic"] = character.maxMagic
        playerDict["magic"] = character.magic
        playerDict["points"] = character.points
        playerDict["classification"] = character.classification.description
        playerDict["status"] = character.status.description
        playerDict["maxHealth"] = character.maxHealth
        playerDict["experienceLevel"] = character.experience.description
        playerDict["chewingLevel"] = character.chewing
        playerDict["gulpingLevel"] = character.gulping
        playerDict["intakeLevel"] = character.intake
        
        return playerDict
    }
    
    
    public func jsonTransfer(jsonDict: [String: Any]) {
        
        let jsonRepresentation = try! JSONSerialization.data(withJSONObject: jsonDict, options: [])
        
        let returned = String(bytes: jsonRepresentation, encoding: .utf8)!
        
        let jsonData = returned.data(using: .utf8)!
        
        let jsonObject = try! JSONSerialization.jsonObject(with: jsonData, options:[]) as! [String:Any]
        
        print(jsonObject)
    }
}
