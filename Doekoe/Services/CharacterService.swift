//
//  CharacterService.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import Foundation

class CharacterService {
    
    private var character : Character?
    
    private static var sharedCharacterService: CharacterService = {
        let characterService = CharacterService()
        return characterService
    }()
    
    private init() {
        
    }
    
    class func shared() -> CharacterService {
        return sharedCharacterService
    }
    
    func setCharacter(character : Character) {
        self.character = character
    }
    
    func getCharacter() -> Character? {
        return character
    }
    
}
