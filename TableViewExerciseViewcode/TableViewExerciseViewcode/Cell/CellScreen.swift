//
//  CellScreen.swift
//  TableViewExerciseViewcode
//
//  Created by Rafael Penna on 14/04/23.
//

import UIKit

class CellScreen: UIView {
    
    lazy var driverImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
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
    
    lazy var racesLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        addElements()
        constraintsScreen()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func addElements(){
        addSubview(driverImage)
        addSubview(nameLabel)
        addSubview(teamLabel)
        addSubview(racesLabel)
    }
    
    private func constraintsScreen(){
        NSLayoutConstraint.activate([
        
            driverImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            driverImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            driverImage.heightAnchor.constraint(equalToConstant: 80),
            driverImage.widthAnchor.constraint(equalToConstant: 80),
            
            teamLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            teamLabel.leadingAnchor.constraint(equalTo: driverImage.trailingAnchor, constant: 45),
            
            nameLabel.bottomAnchor.constraint(equalTo: teamLabel.topAnchor, constant: -15),
            nameLabel.leadingAnchor.constraint(equalTo: driverImage.trailingAnchor, constant: 45),
            
            racesLabel.topAnchor.constraint(equalTo: teamLabel.bottomAnchor,constant: 15),
            racesLabel.leadingAnchor.constraint(equalTo: driverImage.trailingAnchor, constant: 45),
        ])
    }


}
