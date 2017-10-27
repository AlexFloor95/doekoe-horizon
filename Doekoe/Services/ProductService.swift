//
//  ProductService.swift
//  Doekoe
//
//  Created by Alex Floor on 26-10-17.
//  Copyright © 2017 nl.topicus.experience. All rights reserved.
//

import Foundation
import SwiftyJSON

class ProductService {
    
    private static var sharedProductService: ProductService = {
        let productService = ProductService()
        return productService
    }()
    
    private init() {
        
    }
    
    class func shared() -> ProductService {
        return sharedProductService
    }
    
    func getProducts() -> [Product]? {
        var products : [Product] = [Product]()
        if let jsonProducts = readJson() {
            for product in jsonProducts.array! {
                let newProduct = Product()
                newProduct.title = product["product"]["title"].description
                newProduct.cosmeticsId = product["product"]["cosmeticsId"].int
                newProduct.swagEffect = product["product"]["swagEffect"].int
                newProduct.costs = product["product"]["cost"]["one-off"].int
                newProduct.costsRepeating = product["product"]["cost"]["returning"].int
                newProduct.healthEffect = product["product"]["healthEffect"].int
                products.append(newProduct)
            }
        }
        return products
    }
    
    private func readJson() -> JSON? {
        if let path = Bundle.main.path(forResource: "Products", ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .alwaysMapped)
                let jsonObj = JSON(data: data)
                print(jsonObj)
                return jsonObj
                
            } catch let error {
                print("parse error: \(error.localizedDescription)")
                return nil
            }
        } else {
            print("Invalid filename/path.")
            return nil
        }
    }
    
}
