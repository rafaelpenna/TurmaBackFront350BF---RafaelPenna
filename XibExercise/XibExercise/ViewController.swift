//
//  ViewController.swift
//  XibExercise
//
//  Created by Rafael Penna on 11/04/23.
//

// Exercício para treinamento da utlização de tableView com arquivos Xib para configuração da célula.

import UIKit

class ViewController: UIViewController {


    @IBOutlet var tableView: UITableView!
    
    var dataList: [Person] = [Person(nameDriver: "Leclerc", imageDriver: "Leclerc"),
                            Person(nameDriver: "Max", imageDriver: "Max"),
                            Person(nameDriver: "Sainz", imageDriver: "sainz"),
                            Person(nameDriver: "Norris", imageDriver: "Norris"),
                            Person(nameDriver: "Vettel", imageDriver: "Vettel"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
    }
    
    private func configureTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DetailTableViewCell.nib(), forCellReuseIdentifier: DetailTableViewCell.identifier)
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.identifier, for: indexPath) as? DetailTableViewCell
        cell?.setupCell(person: dataList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

