//
//  FriendCollectionCell.swift
//  VK-Client
//
//  Created by HappyRoman on 03/12/2022.
//

import UIKit

class FriendCollectionCell: UICollectionViewCell {
    
    @IBOutlet weak var photoFriend: UIImageView!
    
    
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var conteiner: UIView!
    
    override func awakeFromNib() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(likeTap))
        tap.numberOfTapsRequired = 2
        conteiner.addGestureRecognizer(tap)
    }
    @objc func likeTap(_ :UITapGestureRecognizer) {
        likeControl.isLike.toggle()
        
        if likeControl.isLike {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart")
            likeControl.likePicture.tintColor = .blue
            likeControl.like -= 1
            likeControl.likeNum.text = "\(likeControl.like)"
            
        } else {
            likeControl.likePicture.image = UIImage(systemName: "suit.heart.fill")
            likeControl.likePicture.tintColor = .red
            likeControl.like += 1
            likeControl.likeNum.text = "\(likeControl.like)"
        }
    }
}
