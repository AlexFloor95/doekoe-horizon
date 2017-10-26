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
    private let INITIAL_HAIR = 0
    private let INITIAL_HEAD = 0
    private let INITIAL_SHIRT = 0
    private let INITIAL_TROUSERS = 0
    
    var money : Int?
    var health : Int?
    var swagLevel : Int?
    var earnings : Int?
    var costs : Int?
    // customazation
    var name : String?
    var gender : Gender?
    // cosmetics
    var selected_hair : Int?
    var selected_head : Int?
    var selected_shirt : Int?
    var selected_trousers : Int?
    
    init() {
        money = INITIAL_MONEY
        health = INITIAL_HEALTH
        swagLevel = INITIAL_SWAG
        earnings = INITIAL_EARNINGS
        costs = INITIAL_COSTS
        selected_hair = INITIAL_HAIR
        selected_head = INITIAL_HEAD
        selected_shirt = INITIAL_SHIRT
        selected_trousers = INITIAL_TROUSERS
    }
}
