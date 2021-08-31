//
//  ViewController.swift
//  DemoApp
//
//  Created by Prithvi Raj on 24/08/21.
//

import UIKit
import CollectionViewPagingLayout
import Foundation

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    var viewModel = FruitsViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        configureTopView()
        configureViews()
    }
    
    private func configureViews() {
        view.backgroundColor = #colorLiteral(red: 0.9529411765, green: 0.9529411765, blue: 0.9529411765, alpha: 1)
        view.clipsToBounds = true
        configureCollectionView()
    }
    
    func configureTopView() {
        if UIDevice.current.hasNotch {
            topConstraint.constant = 44
        } else {
            topConstraint.constant = 30
        }
    }
    
    private func configureCollectionView() {
        collectionView.register(UINib.init(nibName: "FruitCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FruitCollectionViewCell")
        collectionView.register(UINib.init(nibName: "PriceTagView", bundle: nil), forCellWithReuseIdentifier: "PriceTagView")
        collectionView.isPagingEnabled = true
        collectionView.dataSource = self
        collectionView.delegate = self
        let layout = CollectionViewPagingLayout()
        layout.numberOfVisibleItems = 6
        collectionView.collectionViewLayout = layout
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.clipsToBounds = false
        collectionView.backgroundColor = .clear
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.itemViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let itemViewModel = viewModel.itemViewModels[indexPath.row]
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FruitCollectionViewCell", for: indexPath) as? FruitCollectionViewCell else { return UICollectionViewCell() }
        cell.viewModel = itemViewModel
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let detailsViewController = storyBoard.instantiateViewController(withIdentifier: "DetailsViewController") as! DetailsViewController
        detailsViewController.fruits = viewModel.itemViewModels[indexPath.row]
        detailsViewController.modalPresentationStyle = .fullScreen
        self.present(detailsViewController, animated: true, completion:nil)
    }
}

