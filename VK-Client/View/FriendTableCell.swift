//
//  FriendsTableViewCell.swift
//  VK-Client
//
//  Created by HappyRoman on 03/12/2022.
//

import UIKit

class FriendTableCell: UITableViewCell {
    
    @IBOutlet weak var imageFriendCell: UIImageView!
    
    @IBOutlet weak var lableFriendCell: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
