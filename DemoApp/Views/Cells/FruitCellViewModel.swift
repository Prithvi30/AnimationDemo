//
//  FruitCellViewModel.swift
//  DemoApp
//
//  Created by Prithvi Raj on 24/08/21.
//

import Foundation
import UIKit

struct FruitCellViewModel {
    
    let fruit: Fruit
    let numberOfItems: Int
    let index: Int
    var quantity: Int = 0
    
    var cardBackgroundColor: UIColor {
        fruit.tintColor
    }
    
    var image: UIImage? {
        UIImage(named: fruit.imageName)
    }
}
