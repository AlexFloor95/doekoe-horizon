//
//  CharacterView.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import UIKit

class CharacterView: XibView {
    @IBOutlet weak var HairImageView: UIImageView!
    @IBOutlet weak var HeadImageView: UIImageView!
    @IBOutlet weak var ShirtImageView: UIImageView!
    @IBOutlet weak var TrousersImageView: UIImageView!
    
    func initializeCharacterView(withCharacter character : Character) {
        // Set the correct images according to selected cosmetics
        HairImageView.image = Cosmetics.hairCosmetics[character.selected_hair]
        HeadImageView.image = Cosmetics.headCosmetics[character.selected_head]
        ShirtImageView.image = Cosmetics.shirtCosmetics[character.selected_shirt]
        TrousersImageView.image = Cosmetics.trouserCosmetics[character.selected_pants]
    }
    
}
