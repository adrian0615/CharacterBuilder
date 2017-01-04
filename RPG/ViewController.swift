//
//  ViewController.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/3/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    
    
    let character = PlayerCharacter(name: "Draygon", classification: .eater, maxMagic: 10, magic: 8, health: 50)
    
    //fix labels
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var classLabel: UILabel!
    @IBOutlet var maxHeatlhLabel: UILabel!
    @IBOutlet var heatlhLabel: UILabel!
    @IBOutlet var maxMagicLabel: UILabel!
    @IBOutlet var magicLabel: UILabel!
    @IBOutlet var experienceLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var nextExperiencePointLabel: UILabel!
    
    @IBAction func hurt1() {
        character.takeDamage(1)
        super.viewWillAppear(true)
    }
    @IBAction func hurt() {
        character.takeDamage(10)
        super.viewWillAppear(true)
    }
    @IBAction func heal1() {
        character.gainHealth(1)
        super.viewWillAppear(true)
    }
    @IBAction func heal() {
        character.gainHealth(10)
        super.viewWillAppear(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        nameLabel.text = character.name
        maxHeatlhLabel.text = String(character.maxHealth)
        heatlhLabel.text = String(character.health)
        maxMagicLabel.text = String(character.maxMagic)
        magicLabel.text = String(character.magic)
        experienceLabel.text = String(describing: character.experience)
        nextExperiencePointLabel.text = "\(String(character.pointsTilNextExperienceLevel(character.points)))"
        statusLabel.text = String(describing: character.status)
        classLabel.text = String(describing: character.classification)
    }
    


}

