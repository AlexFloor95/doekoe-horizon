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
    
    @IBOutlet weak var productTitleLabel: UILabel!
    @IBOutlet weak var productCostPrefixLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    @IBOutlet weak var characterView: CharacterView!
    
    let products : [Product]? = ProductService.shared().getProducts()
    var currentProduct = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        purchaseButton.layer.cornerRadius = 3
    characterView.initializeCharacterView(withCharacter: CharacterService.shared().getCharacter()!)
        loadCharacterValues()
        loadProduct(product: products![currentProduct])
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
    
    func loadProduct(product : Product) {
        productTitleLabel.text = product.title
        productPriceLabel.text = "€ " + product.costs!.description
        productCostPrefixLabel.text = "Kosten"
    }
    
    @IBAction func productCycleLeft(_ sender: Any) {
        if currentProduct != 0 {
            currentProduct -= 1
        }
        else {
            currentProduct = (products?.count)! - 1
        }
        loadProduct(product: products![currentProduct])
    }
    
    @IBAction func productCycleRight(_ sender: Any) {
        if currentProduct != ((products?.count)! - 1) {
            currentProduct += 1
        }
        else {
            currentProduct = 0
        }
        loadProduct(product: products![currentProduct])
    }
    
}
