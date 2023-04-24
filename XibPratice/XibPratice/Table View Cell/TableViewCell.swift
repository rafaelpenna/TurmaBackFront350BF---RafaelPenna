//
//  TableViewCell.swift
//  XibPratice
//
//  Created by Rafael Penna on 14/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {


    @IBOutlet var driverImage: UIImageView!
    @IBOutlet var nameDriver: UILabel!
    @IBOutlet var teamDriver: UILabel!
    @IBOutlet var racesDriver: UILabel!
    
    static let identifier: String = "TableViewCell"
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    func setupCell(driver: Driver) {
        driverImage.image = UIImage(named: "\(driver.image)")
        nameDriver.text = "Nome: \(driver.name)"
        teamDriver.text = "Equipe: \(driver.team)"
        racesDriver.text = "Corridas \(driver.races)"
    }

}
