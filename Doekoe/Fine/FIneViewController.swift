//
//  QuizViewController.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import UIKit

class FineViewController: UIViewController {
    
    @IBOutlet weak var moneyLabel: UILabel!
    
    @IBOutlet weak var fineTitleLabel: UILabel!
    @IBOutlet weak var fineDescriptionLabel: UILabel!
    @IBOutlet weak var costsLabel: UILabel!
    
    @IBOutlet weak var acceptButton: UIButton!
    @IBOutlet weak var denyButton: UIButton!
    
    let fine = Fine()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fine.title = "Kak... boete"
        fine.description = "Je scooter is wel nice, maar hij loopt gewoon net ff iets te hard. Ze hebben 'm niet ingenomen, maar je moet wel een boete betalen."
        fine.costs = 90
        fine.acceptText = "Oké, oké ik betaal die gasten"
        fine.denyText = "Zoek het uit, ik betaal niet!"
        setupFine(withFine: fine)
        acceptButton.layer.cornerRadius = 3
        denyButton.layer.cornerRadius = 3
        loadUserDetails()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupFine(withFine fine: Fine) {
        fineTitleLabel.text = fine.title
        fineDescriptionLabel.text = fine.description
        costsLabel.text = "€ " + (fine.costs?.description)! + ",00"
        acceptButton.setTitle(fine.acceptText, for: .normal)
        denyButton.setTitle(fine.denyText, for: .normal)
    }
    
    func loadUserDetails() {
        moneyLabel.text = "€ " + (CharacterService.shared().getCharacter()?.money?.description)! + ",00"
    }
    
    @IBAction func acceptFIne(_ sender: Any) {
        CharacterService.shared().getCharacter()?.handleFine(fine: fine, payed: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func denyFine(_ sender: Any) {
        CharacterService.shared().getCharacter()?.handleFine(fine: fine, payed: false)
        self.dismiss(animated: true, completion: nil)
    }
    
}
