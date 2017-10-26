//
//  Cosmetics.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import Foundation
import UIKit

class Cosmetics {
    // Cosmetics
    static var characterCosmetics : [UIImage]?
    
    static func loadCosmetics() {
        // TODO: load UIImages from assets and put in arrays
        characterCosmetics = [UIImage]()
        characterCosmetics?.append(UIImage(named:"character")!)
    }
}
