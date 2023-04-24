//
//  ViewController.swift
//  TableViewExerciseViewcode
//
//  Created by Rafael Penna on 14/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    let screen: ScreenTableView = ScreenTableView()
    
    var dataList: [Driver] = [Driver(name: "Leclerc", image: "Leclerc", team: "Ferrari", races: 25),
                              Driver(name: "Vettel", image: "Vettel", team: "Aston Martin", races: 39),
                              Driver(name: "Sainz", image: "sainz", team: "Ferrari", races: 26),
                              Driver(name: "Verstappen", image: "Max", team: "Red Bull Racing", races: 30),
    ]
    
    override func loadView() {
        view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        screen.setupTableViewProtocols(delegate: self, dataSource: self)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCellDetail") as? TableViewCellDetail
        cell?.setupCell(driver: dataList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

