//
//  BurgerOrder.swift
//  DesignPatternsPlayground
//
//  Created by Ricardo Pramana Suranta on 12/30/15.
//  Copyright © 2015 Ricardo Pramana Suranta. All rights reserved.
//

import Foundation

// This struct has private setters for Builder pattern examples.
struct BurgerOrder {
    
    internal private(set) var burger: String?
    internal private(set) var drinks: String?
    internal private(set) var fries: String?
    internal private(set) var salad: String?
    internal private(set) var sweets: String?
    
    private let titleLimiter = "===== \n"
    
    func description() -> String {
        
        var description = ""
        
        if let burger = burger where !burger.isEmpty {
            description += "\nBURGER \n"
            description += titleLimiter
            description += burger
        }
        
        if let drinks = drinks where !drinks.isEmpty {
            description += "\nDRINKS \n"
            description += titleLimiter
            description += drinks
        }
        
        if let fries = fries where !fries.isEmpty {
            description += "\nFRIES \n"
            description += titleLimiter
            description += fries
        }
        
        if let salad = salad where !salad.isEmpty {
            description += "\nSALAD \n"
            description += titleLimiter
            description += salad
        }
        
        if let sweets = sweets where !sweets.isEmpty {
            description += "\nSWEETS \n"
            description += titleLimiter
            description += sweets
        }
        
        if description.isEmpty {
            description = "Empty order."
        }
        
        return description
    }
    
}
