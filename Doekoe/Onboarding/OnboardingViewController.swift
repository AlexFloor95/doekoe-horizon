//
//  ViewController.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBOutlet weak var characterView: CharacterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterView.initializeCharacterView(withCharacter: Character())
        
    }
    
    @IBAction func validateOnboarding(_ sender: Any) {
        if !nameTextField.text!.isEmpty && !ageTextField.text!.isEmpty {
            startButton.isEnabled = true
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func finishedOnboarding(_ sender: Any) {
        let character = Character()
        character.name = nameTextField.text
        character.age = Int(ageTextField.text!)
        CharacterService.shared().setCharacter(character: character)
    }
    
}

