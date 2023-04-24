//
//  ViewController.swift
//  TableViewViewcodeTest2
//
//  Created by Rafael Penna on 17/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    let screen: Screen = Screen()
    
    var dataList: [Driver] = [Driver(name: "Max", team: "Alameda", races: "45"),
                              Driver(name: "Dude", team: "VW", races: "63"),
                              Driver(name: "Sander", team: "Alpine", races: "12"),
                              Driver(name: "Stahl", team: "Motor", races: "18"),
                              Driver(name: "McKinnon", team: "Zubat", races: "29"),
                              Driver(name: "Elliot", team: "Morgan", races: "34"),
                              Driver(name: "Bruce", team: "Monroe", races: "42"),]
    
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
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell
        cell?.setupCell(driver: dataList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
}

