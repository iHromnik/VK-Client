//
//  LikeControl.swift
//  VK-Client
//
//  Created by HappyRoman on 10/12/2022.
//

import UIKit

class LikeControl: UIControl {

    @IBOutlet var likePicture: UIImageView!
    @IBOutlet var likeNum: UILabel!
    
    
    var isLike: Bool = true
    var like: Int = 10
    
    
    override func awakeFromNib() {
        likePicture.tintColor = .blue
        likePicture.image = UIImage(systemName: "suit.heart")
        likeNum.text = "\(like)"
    }
    
    override func draw(_ rect: CGRect) {
        layer.cornerRadius = 10
        layer.opacity = 0.5
        layer.masksToBounds = true
    }

}
