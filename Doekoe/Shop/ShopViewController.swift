//
//  ShopViewController.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import UIKit

class ShopViewController: UIViewController {

    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var earningsLabel: UILabel!
    @IBOutlet weak var spendingsLabel: UILabel!
    
    @IBOutlet weak var swipeLeftButton: UIButton!
    @IBOutlet weak var swipeRightButton: UIButton!
    @IBOutlet weak var purchaseButton: UIButton!
    
    @IBOutlet weak var characterView: CharacterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        purchaseButton.layer.cornerRadius = 3
    characterView.initializeCharacterView(withCharacter: CharacterService.shared().getCharacter()!)
        loadCharacterValues()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadCharacterValues() {
        spendingsLabel.text = "→ € " + (CharacterService.shared().getCharacter()?.costs?.description)!
        moneyLabel.text = "€ " + (CharacterService.shared().getCharacter()?.money?.description)!
        earningsLabel.text = "← € " + (CharacterService.shared().getCharacter()?.earnings?.description)!
    }

}
