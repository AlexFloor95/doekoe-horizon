//
//  QuizViewController.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import UIKit

class FineViewController: UIViewController {
    
    @IBOutlet weak var fineTitleLabel: UILabel!
    @IBOutlet weak var fineDescriptionLabel: UILabel!
    @IBOutlet weak var costsLabel: UILabel!
    
    @IBOutlet weak var acceptButton: UIButton!
    @IBOutlet weak var denyButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

}
