//
//  DashboardViewController.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import UIKit

class DashboardViewController: UIViewController {

    @IBOutlet weak var textBubbleLabel: UILabel!
    @IBOutlet weak var moneyLabel: UILabel!
    @IBOutlet weak var earningsLabel: UILabel!
    @IBOutlet weak var spendingsLabel: UILabel!
    
    @IBOutlet weak var characterView: CharacterView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        characterView.initializeCharacterView(withCharacter: CharacterService.shared().getCharacter()!)
        loadCharacterValues()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func speak(text : String) {
        textBubbleLabel.text = text
        textBubbleLabel.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.textBubbleLabel.isHidden = true
        }
    }
    
    func loadCharacterValues() {
        spendingsLabel.text = "→ € " + (CharacterService.shared().getCharacter()?.costs?.description)!
        moneyLabel.text = "€ " + (CharacterService.shared().getCharacter()?.money?.description)!
        earningsLabel.text = "← € " + (CharacterService.shared().getCharacter()?.earnings?.description)!
    }

}
