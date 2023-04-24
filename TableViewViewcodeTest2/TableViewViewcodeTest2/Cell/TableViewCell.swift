//
//  TableViewCell.swift
//  TableViewViewcodeTest2
//
//  Created by Rafael Penna on 17/04/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    var screen: ScreenCell = ScreenCell()
    
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
        screen.nameLabel.text = "Nome: \(driver.name)"
        screen.teamLabel.text = "Equipe: \(driver.team)"
        screen.raceLabel.text = "Corridas: \(driver.races)"
    }
    
    private func configScreenConstraints() {
        NSLayoutConstraint.activate([
        
            screen.topAnchor.constraint(equalTo: topAnchor),
            screen.leadingAnchor.constraint(equalTo: leadingAnchor),
            screen.trailingAnchor.constraint(equalTo: trailingAnchor),
            screen.bottomAnchor.constraint(equalTo: bottomAnchor),
        ])
    }
    

}
