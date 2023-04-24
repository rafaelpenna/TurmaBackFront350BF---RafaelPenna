//
//  ViewController.swift
//  XibPratice
//
//  Created by Rafael Penna on 14/04/23.
//

// Exercício treinamento da utilização de xib em tableView realizado totalmente sem consulta.

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    var dataList: [Driver] = [Driver(name: "Leclerc", image: "Leclerc", team: "Ferrari", races: 25),
                            Driver(name: "Sainz", image: "sainz", team: "Ferrari", races: 21),
                              Driver(name: "Verstapen", image: "Max", team: "Red Bull", races: 28),
                              Driver(name: "Vettel", image: "Vettel", team: "Aston Martin", races: 45),]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        
    }
    
    func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(TableViewCell.nib(), forCellReuseIdentifier: TableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as? TableViewCell
        cell?.setupCell(driver: dataList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}
