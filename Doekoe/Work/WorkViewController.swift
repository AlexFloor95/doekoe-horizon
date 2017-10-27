//
//  WorkViewController.swift
//  Doekoe
//
//  Created by Alex Floor on 27-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import UIKit

class WorkViewController: UIViewController {
    
    @IBOutlet weak var workLoadImageView: UIImageView!
    var workingImages : [UIImage]? = [UIImage]()
    
    var actionsLeft = 3
    
    let moneyEarnings = 30
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load images
        workingImages?.append(UIImage(named:"auto-stage-4")!)
        workingImages?.append(UIImage(named:"auto-stage-3")!)
        workingImages?.append(UIImage(named:"auto-stage-2")!)
        workingImages?.append(UIImage(named:"auto-stage-1")!)
        
        workLoadImageView.isUserInteractionEnabled = true
        workLoadImageView.isMultipleTouchEnabled = true
        // Do any additional setup after loading the view.
        
        workLoadImageView.image = workingImages![actionsLeft]
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        self.workLoadImageView.addGestureRecognizer(gestureRecognizer)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func handleTap(gestureReconizer: UITapGestureRecognizer) {
        // Clean the car!
        actionsLeft -= 1
        guard actionsLeft >= 0 else {
            CharacterService.shared().getCharacter()?.worked(for: moneyEarnings)
            self.dismiss(animated: true, completion: nil)
            print("Lekker gedaan pik!")
            return
        }
        workLoadImageView.image = workingImages![actionsLeft]
    }
    
    @IBAction func closeWorkModal(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
