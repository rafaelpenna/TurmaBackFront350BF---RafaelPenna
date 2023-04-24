//
//  ScreenCell.swift
//  TableViewViewcodeTest2
//
//  Created by Rafael Penna on 17/04/23.
//

import UIKit

class ScreenCell: UIView {

    lazy var nameLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var teamLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var raceLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init (frame: CGRect) {
        super.init(frame: frame)
        addElements()
        constraintsScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements() {
        addSubview(nameLabel)
        addSubview(teamLabel)
        addSubview(raceLabel)
    }
    
    private func constraintsScreen() {
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            teamLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            teamLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            
            raceLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            raceLabel.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor, constant: 10),
        ])
    }

}
