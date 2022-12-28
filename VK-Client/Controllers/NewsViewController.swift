//
//  NewsViewController.swift
//  VK-Client
//
//  Created by HappyRoman on 27/12/2022.
//

import UIKit

class NewsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
 
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet{
            collectionView.delegate = self
            collectionView.dataSource = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionView.register(UINib(nibName: "NewsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewsCell")
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewsCell", for: indexPath) as? NewsCollectionViewCell else {
            preconditionFailure("Error")
        }
        
        cell.avatarImage.image = UIImage(named: "groupAva/Тату раи")
        cell.mainImage.image = UIImage(named: "tato")
        cell.mainLable.text = "Отлично выглядит"
        cell.nameLable.text = "Ilon Mask"
        cell.detaLable.text = "28.12.2022"
        return cell
    }
    
    
    
    
    
}
