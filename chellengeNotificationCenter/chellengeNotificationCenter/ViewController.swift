//
//  ViewController.swift
//  chellengeNotificationCenter
//
//  Created by Rafael Penna on 09/05/23.
//

import UIKit

class ViewController: UIViewController {
    
    var dataList:[User] = []

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var addNameButton: UIButton!
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configTextAndButton()
        configTableView()
        configObserver()
    }
    
    private func configTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(CustomTableViewCell.nib(), forCellReuseIdentifier: CustomTableViewCell.identifier)
    }
    
    private func configTextAndButton() {
        titleLabel.text = "Clique para adicionar um novo nome:"
        addNameButton.setTitle("Novo Nome", for: .normal)
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(addName), name: Notification.Name("addName"), object: nil)
    }
    
    @objc func addName(_ notification: NSNotification) {
        dataList.append(User(name: notification.object as? String ?? ""))
        tableView.reloadData()
    }


    @IBAction func addNameButtonTapped(_ sender: Any) {
        let vc = UIStoryboard(name: "InsertNameViewController", bundle: nil).instantiateViewController(withIdentifier: "InsertNameViewController") as? InsertNameViewController
        navigationController?.pushViewController(vc ?? UIViewController(), animated: true)
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CustomTableViewCell.identifier, for: indexPath) as? CustomTableViewCell
        cell?.setupCell(user: dataList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
}

