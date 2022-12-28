//
//  NewsCollectionViewCell.swift
//  VK-Client
//
//  Created by HappyRoman on 27/12/2022.
//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImage: UIImageView! {
        didSet {
            avatarImage.layer.cornerRadius = 37
        }
    }
    
    @IBOutlet weak var mainLable: UILabel!
    
    @IBOutlet weak var mainImage: UIImageView!
    
    @IBOutlet weak var nameLable: UILabel!
    
    
    @IBOutlet weak var detaLable: UILabel!
    
    @IBOutlet weak var viewsView: UIView!{
        didSet{
            viewsView.layer.cornerRadius = 15
            viewsView.layer.opacity = 0.5
        }
    }
    @IBOutlet weak var comentView: UIView! {
        didSet {
            comentView.layer.cornerRadius = 15
            comentView.layer.opacity = 0.5
        }
    }
    @IBOutlet weak var likeView: UIView!{
        didSet {
            likeView.layer.cornerRadius = 15
            // likeView.layer.opacity = 0.5
        }
    }
    @IBOutlet weak var shareView: UIView! {
        didSet {
            shareView.layer.cornerRadius = 15
            // shareView.layer.opacity = 0.5
        }
    }
    
    @IBOutlet weak var lkeImage: UIImageView! {
        didSet {
            lkeImage.tintColor = .red
            lkeImage.image = UIImage(systemName: "suit.heart.fill")
        }
    }
    
    @IBOutlet weak var likeLable: UILabel! {
        didSet {
            likeLable.text = "123"
        }
    }
    
    
    @IBOutlet weak var shareImage: UIImageView! {
        didSet {
            shareImage.image = UIImage(named: "share")
            shareImage.layer.cornerRadius = 17
        }
    }
    
    
    @IBOutlet weak var comentImage: UIImageView! {
        didSet {
            comentImage.image = UIImage(named: "coment")
            comentImage.layer.cornerRadius = 17
        }
    }
    
    @IBOutlet weak var viewsImage: UIImageView! {
        didSet {
            viewsImage.image = UIImage(named: "views")
            viewsImage.layer.cornerRadius = 17
        }
    }
       
    @IBOutlet weak var viewsLable: UILabel! {
            didSet {
                viewsLable.text = "17K"
        }
    }
}



