//
//  AvatarView.swift
//  VK-Client
//
//  Created by HappyRoman on 10/12/2022.
//

import UIKit

class AvatarView: UIView {

    @IBOutlet var avatarImageView: UIImageView!
    @IBOutlet var shadowView: UIView!
    
    
var shadowColor = UIColor.black
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        shadowView.layer.shadowColor = shadowColor.cgColor 
        shadowView.layer.shadowOffset = .init(width: 5, height: 5)
        shadowView.layer.shadowRadius = 10
        shadowView.layer.shadowOpacity = 0.9
    }
    
    override func layoutSubviews() {
        avatarImageView.layer.cornerRadius = bounds.height/2
        shadowView.layer.cornerRadius = bounds.height/2
    }
    
}
