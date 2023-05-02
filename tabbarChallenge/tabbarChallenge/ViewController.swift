//
//  ViewController.swift
//  tabbarChallenge
//
//  Created by Rafael Penna on 25/04/23.
//

import UIKit

class ViewController: UIViewController {
    
    var dataList:[User] = []

    @IBOutlet var userPictureView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    @IBOutlet var usersTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func configureTableView() {
        usersTableView.delegate = self
        usersTableView.dataSource = self
        usersTableView.register(UserTableViewCell.nib(), forCellReuseIdentifier: UserTableViewCell.identifier)
    }

    @IBAction func addTappedButton(_ sender: Any) {
        let data = nameTextField.text
        dataList.append(data)
    }
    
}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: UserTableViewCell.identifier, for: indexPath) as? UserTableViewCell
        cell?.setupCell(user: dataList[indexPath.row])
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
}

