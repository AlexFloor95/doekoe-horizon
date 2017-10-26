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
    // Hair
    var hairCosmetics : [UIImage]?
    // Head
    var headCosmetics : [UIImage]?
    // Shirt
    var shirtCosmetics : [UIImage]?
    // Trousers
    var trouserCosmetics : [UIImage]?
    
    init() {
        self.hairCosmetics = [];
        headCosmetics = [];
        shirtCosmetics = [];
        trouserCosmetics = [];
    }
}
