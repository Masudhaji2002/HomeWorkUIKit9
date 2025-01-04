//
//  ViewController.swift
//  UIKitHomeWork9
//
//  Created by Масуд Гаджиев on 04.01.2025.
//

import UIKit

class ViewController: UIViewController {
    
    let cardData = CardModel.cardData
    
    
    lazy var collection: UICollectionView = {
        let layout = $0.collectionViewLayout as! UICollectionViewFlowLayout
        layout.scrollDirection = .vertical
        layout.minimumInteritemSpacing = 10
        layout.minimumLineSpacing = 20
        layout.estimatedItemSize = UICollectionViewFlowLayout.automaticSize
        $0.dataSource = self
        $0.backgroundColor = .white
        $0.register(CardCell.self, forCellWithReuseIdentifier: CardCell.id)
        $0.contentInset = UIEdgeInsets(top: 0, left: 25, bottom: 0, right: 30)
        return $0
    }(UICollectionView(frame: view.frame, collectionViewLayout: UICollectionViewFlowLayout()))

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(collection)
        
    }


}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        cardData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CardCell.id, for: indexPath) as? CardCell else {
            fatalError("Unable to dequeue CardView")
        }
        
        cell.setupCell(item: cardData[indexPath.item])
        
        return cell
    }
    
    
}
