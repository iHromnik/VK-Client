//
//  FriendGroupXIBCell.swift
//  VK-Client
//
//  Created by HappyRoman on 27/12/2022.
//

import UIKit

class FriendGroupXIBCell: UITableViewCell {

    
    @IBOutlet weak var lableName: UILabel!
    
    @IBOutlet weak var avatarImage: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
