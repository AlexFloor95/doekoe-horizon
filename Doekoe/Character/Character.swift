//
//  Character.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import Foundation

class Character {
    // initial settings
    private let INITIAL_MONEY = 1000
    private let INITIAL_HEALTH = 100
    private let INITIAL_SWAG = 0
    private let INITIAL_EARNINGS = 50
    private let INITIAL_COSTS = 0
    // initial selected cosmetics
    private let INITIAL_COSMETICS = 0
    private let INITIAL_PRODUCTS = [Product]()
    
    // temp variable to check if fine is payed (demo purpose)
    var payedFine = false
    
    var money : Int?
    var health : Int?
    var swagLevel : Int?
    var earnings : Int?
    var costs : Int?
    // customazation
    var name : String?
    var gender : Gender?
    var age : Int?
    // cosmetics
    var selected_cosmetics : Int?
    // products
    var ownedProducts : [Product]?
    
    init() {
        // TODO: refactor
        Cosmetics.loadCosmetics()
        money = INITIAL_MONEY
        health = INITIAL_HEALTH
        swagLevel = INITIAL_SWAG
        earnings = INITIAL_EARNINGS
        costs = INITIAL_COSTS
        selected_cosmetics = INITIAL_COSMETICS
        ownedProducts = INITIAL_PRODUCTS
    }
    
    func purchaseProduct(product : Product) {
        money! -= product.costs!
        ownedProducts?.append(product)
        selected_cosmetics = product.cosmeticsId
    }
    
    func handleFine(fine : Fine, payed : Bool) {
        if payed {
            money! -= fine.costs!
            payedFine = true
        }
    }
}
