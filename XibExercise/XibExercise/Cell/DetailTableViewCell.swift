//
//  DetailTableViewCell.swift
//  XibExercise
//
//  Created by Rafael Penna on 11/04/23.
//

import UIKit

class DetailTableViewCell: UITableViewCell {

    @IBOutlet var driverImage: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    
    static let identifier: String = "DetailTableViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupCell(person: Person) {
        nameLabel.text = person.nameDriver
        driverImage.image = UIImage(named: "\(person.imageDriver)")
        
    
    }

}
