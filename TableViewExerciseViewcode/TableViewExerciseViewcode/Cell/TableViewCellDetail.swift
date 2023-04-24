//
//  TableViewCellDetail.swift
//  TableViewExerciseViewcode
//
//  Created by Rafael Penna on 14/04/23.
//

import UIKit

class TableViewCellDetail: UITableViewCell {
    
    var screen: CellScreen = CellScreen()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.screen.translatesAutoresizingMaskIntoConstraints = false
        self.contentView.addSubview(self.screen)
        configScreenConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(driver: Driver) {
        screen.driverImage.image = UIImage(named: "\(driver.image)")
        screen.nameLabel.text = "Nome: \(driver.name)"
        screen.teamLabel.text = "Equipe: \(driver.team)"
        screen.racesLabel.text = "Corridas: \(driver.races)"
    }

    private func configScreenConstraints() {
        NSLayoutConstraint.activate([
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }

}
