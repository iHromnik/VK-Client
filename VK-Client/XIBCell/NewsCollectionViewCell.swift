//
//  NewsCollectionViewCell.swift
//  VK-Client
//
//  Created by HappyRoman on 27/12/2022.
//

import UIKit

class NewsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var avatarView: UIView!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelTime: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var likeView: UIView!
    @IBOutlet weak var likeImage: UIImageView!
    @IBOutlet weak var labelLikeCount: UILabel!
    @IBOutlet weak var labelMain: UILabel!
    @IBOutlet weak var commentView: UIView!
    @IBOutlet weak var commentImage: UIImageView!
    @IBOutlet weak var labelComment: UILabel!
    @IBOutlet weak var shareView: UIView!
    @IBOutlet weak var shareImage: UIImageView!
    @IBOutlet weak var lableShare: UILabel!
    @IBOutlet weak var viewViews: UIView!
    @IBOutlet weak var viewsImage: UIImageView!
    @IBOutlet weak var lableViews: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
