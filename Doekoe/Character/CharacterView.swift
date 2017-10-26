//
//  CharacterView.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import UIKit

class CharacterView: XibView {

    @IBOutlet weak var characterImageView: UIImageView!
    
    func initializeCharacterView(withCharacter character : Character) {
        // Set the correct images according to selected cosmetics
        characterImageView.image = Cosmetics.characterCosmetics![character.selected_cosmetics!]
    }
    
}
