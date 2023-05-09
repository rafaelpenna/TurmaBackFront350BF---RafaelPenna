//
//  CustomTableViewCell.swift
//  chellengeNotificationCenter
//
//  Created by Rafael Penna on 09/05/23.
//

import UIKit

class CustomTableViewCell: UITableViewCell {
    
    static let identifier: String = "CustomTableViewCell"

    @IBOutlet var nameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func setupCell(user: User) {
        nameLabel.text = user.name
    }

}
