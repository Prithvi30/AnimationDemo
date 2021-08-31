//
//  DetailsViewController.swift
//  DemoApp
//
//  Created by Prithvi Raj on 25/08/21.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var buyButton: UIButton!
    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var secondView: UIView!
    @IBOutlet weak var fruitLabel: UILabel!
    @IBOutlet weak var qtyLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var backButtonTopConstraint: NSLayoutConstraint!
    
    var fruits: FruitCellViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureBackButton()
        secondViewConfigure()
        buyNowButtonSetup()
        configData()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func configureBackButton() {
        if UIDevice.current.hasNotch {
        //
        } else {
            backButtonTopConstraint.constant = 30
        }
    }
    
    func buyNowButtonSetup() {
        let color1 = hexStringToUIColor(hex: "#ea5455")
        let color2 = hexStringToUIColor(hex: "#feb692")
        buyButton.layerGradient(startPoint: .centerRight, endPoint: .centerLeft, colorArray: [color1.cgColor, color2.cgColor], type: .axial)
        buyButton.layer.cornerRadius = 20
        buyButton.clipsToBounds = true
        topView.backgroundColor = fruits?.cardBackgroundColor
    }
    
    func secondViewConfigure() {
        let color1 = hexStringToUIColor(hex: "#efe7e7")
        let color2 = hexStringToUIColor(hex: "#edf3f3")
        secondView.layerGradient(startPoint: .centerRight, endPoint: .centerLeft, colorArray: [color1.cgColor, color2.cgColor], type: .axial)
        secondView.layer.cornerRadius = 20
        secondView.clipsToBounds = true
    }
    
    func topViewConfigure() {
        let color3 = hexStringToUIColor(hex: "#f5f7fa")
        let color4 = hexStringToUIColor(hex: "#f9c1b1")
        topView.layerGradient(startPoint: .centerRight, endPoint: .centerLeft, colorArray: [color3.cgColor, color4.cgColor], type: .axial)
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func configData() {
        self.imageView.image = fruits?.image
        self.fruitLabel.text = fruits?.fruit.title
        self.descLabel.text = fruits?.fruit.description
    }
}
