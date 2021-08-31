//
//  FruitsViewModel.swift
//  DemoApp
//
//  Created by Prithvi Raj on 24/08/21.
//

import Foundation

class FruitsViewModel {
    var itemViewModels: [FruitCellViewModel] = []
    
    private let fruits: [Fruit] = [
        Fruit(
            pageTitle: "Mango",
            title: "Atkins Mango",
            description: "A mango is an edible stone fruit produced by the tropical tree Mangifera indica which is believed to have originated from the region between northwestern Myanmar, Bangladesh, and northeastern India.",
            isVegan: true,
            price: 1.68,
            tintColor: #colorLiteral(red: 1, green: 0.7647058824, blue: 0, alpha: 1),
            imageName: "mangoImage"
        ),
        Fruit(
            pageTitle: "Apple",
            title: "Green Apple",
            description: "Green apple is a variety of apple that was first cultivated in Australia by Maria Ann Smith, which is why the apples of this variety are often called Granny Smith apples. It have the Rome beauty.",
            isVegan: true,
            price: 0.78,
            tintColor: #colorLiteral(red: 0.6784313725, green: 0.8156862745, blue: 0.2549019608, alpha: 1),
            imageName: "appleImage"
        ),
        Fruit(
            pageTitle: "Cherry",
            title: "Sweet Cherry",
            description: "A cherry is the fruit of many plants of the genus Prunus, and is a fleshy drupe. Commercial cherries are obtained from cultivars of several species, such as the sweet Prunus avium and the sour cerasus.",
            isVegan: true,
            price: 3.14,
            tintColor: #colorLiteral(red: 0.8862745098, green: 0.07843137255, blue: 0.1803921569, alpha: 1),
            imageName: "cherryImage"
        ),
        Fruit(
            pageTitle: "Papaya",
            title: "Papaya",
            description: "The papaya, papaw, or pawpaw is the plant Carica papaya, one of the 22 accepted species in the genus Carica of the family Caricaceae. Its origin is in the tropics of the Americas and taste sweet.",
            isVegan: true,
            price: 4.28,
            tintColor: #colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1),
            imageName: "papayaImage"
        ),
        Fruit(
            pageTitle: "Berry",
            title: "Blackberry",
            description: "The blackberry is an edible fruit produced by many species in the genus Rubus in the family Rosaceae, hybrids among these species within the subgenus Rubus and hybrids between the subgenera Rubus.",
            isVegan: true,
            price: 4.12,
            tintColor: #colorLiteral(red: 0.3294117647, green: 0.231372549, blue: 0.3294117647, alpha: 1),
            imageName: "blackberryImage"
        )
    ]
    
    
    // MARK: Lifecycle
    
    init() {
        itemViewModels = fruits.enumerated().map { index, fruit -> FruitCellViewModel in
            FruitCellViewModel(fruit: fruit, numberOfItems: fruits.count, index: index)
        }
    }
}
