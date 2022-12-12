//
//  FriendCollectionViewController.swift
//  VK-Client
//
//  Created by HappyRoman on 03/12/2022.
//

import UIKit

private let reuseIdentifier = "Cell"

class FriendCollectionViewController: UICollectionViewController {
    
    
    var photo: UIImage?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }



    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

   
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FriendPhoto", for: indexPath) as? FriendCollectionCell else {
            preconditionFailure("CollectionCell Error")
        }
        
        cell.photoFriend.image = photo
    
        return cell
    }

}
