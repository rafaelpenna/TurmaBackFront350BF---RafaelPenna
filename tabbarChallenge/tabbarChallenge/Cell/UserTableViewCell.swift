//
//  UserTableViewCell.swift
//  tabbarChallenge
//
//  Created by Rafael Penna on 25/04/23.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    
    static let identifier: String = "UserTableViewCell"

    @IBOutlet var userImageView: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func setupCell(user: User) {
        userImageView.image = user.image
        userNameLabel.text = user.name
    }

}
