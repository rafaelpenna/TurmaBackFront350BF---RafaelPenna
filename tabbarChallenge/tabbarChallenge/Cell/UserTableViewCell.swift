//
//  UserTableViewCell.swift
//  tabbarChallenge
//
//  Created by Rafael Penna on 25/04/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
