//
//  ViewController.swift
//  RPG
//
//  Created by Adrian McDaniel on 1/3/17.
//  Copyright © 2017 dssafsfsd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let characters: [PlayerCharacter] = [ PlayerCharacter(name: "Draygon", classification: .eater, maxMagic: 10, magic: 8, health: 40, points: 1), PlayerCharacter(name: "Arriyon", classification: .drinker, maxMagic: 10, magic: 9, health: 40, points: 3), PlayerCharacter(name: "Bob", classification: .none, maxMagic: 10, magic: 8, health: 30, points: 5)]
    
    var charIndex: Int = 0 {
        didSet {
            if charIndex >= characters.count {
                charIndex %= characters.count
            }
            while charIndex < 0 {
                charIndex += characters.count
            }
        }
    }
    
    var currentCharacter: PlayerCharacter {
        return characters[charIndex]
    }
    
    
    //fix labels
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var classLabel: UILabel!
    @IBOutlet var heatlhLabel: UILabel!
    @IBOutlet var magicLabel: UILabel!
    @IBOutlet var experienceLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var nextExperiencePointLabel: UILabel!
    @IBOutlet var intakeLabel: UILabel!
    @IBOutlet var chewingLabel: UILabel!
    @IBOutlet var gulpingLabel: UILabel!
    
    
    @IBAction func prev() {
        charIndex -= 1
        currentCharacter.determineStats()
        update()
    }
    
    @IBAction func next() {
        charIndex += 1
        currentCharacter.determineStats()
        update()
    }
    
    @IBAction func hurt1() {
        currentCharacter.takeDamage(1)
        update()
    }
    @IBAction func hurt() {
        currentCharacter.takeDamage(10)
        update()
    }
    @IBAction func heal1() {
        currentCharacter.gainHealth(1)
        update()
    }
    @IBAction func heal() {
        currentCharacter.gainHealth(10)
        update()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func update() {
        currentCharacter.determineStats()
        nameLabel.text = currentCharacter.name
        heatlhLabel.text = "health: \(String(currentCharacter.health))|\(String(currentCharacter.maxHealth))"
        magicLabel.text = "magic: \(String(currentCharacter.magic))|\(String(currentCharacter.maxMagic))"
        experienceLabel.text = String(describing: currentCharacter.experience)
        nextExperiencePointLabel.text = "\(String(currentCharacter.pointsTilNextExperienceLevel(currentCharacter.points))) til next level"
        statusLabel.text = "status: \(String(describing: currentCharacter.status))"
        classLabel.text = "class: \(String(describing: currentCharacter.classification))"
        intakeLabel.text = "intake: \(String(currentCharacter.intake))"
        chewingLabel.text = "chewing: \(String(currentCharacter.chewing))"
        gulpingLabel.text = "gulping: \(String(currentCharacter.chewing))"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        update()
    }
    


}

