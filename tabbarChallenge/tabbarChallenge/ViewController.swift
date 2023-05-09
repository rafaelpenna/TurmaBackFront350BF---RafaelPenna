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
    @IBOutlet var photoEditButton: UIButton!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var addButton: UIButton!
    @IBOutlet var usersTableView: UITableView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTableView()
        configTextAndColors()
        configImagePickerController()
    }
    
    private func configImagePickerController() {
        imagePicker.delegate = self
    }
    
    private func configureTableView() {
        usersTableView.delegate = self
        usersTableView.dataSource = self
        usersTableView.register(UserTableViewCell.nib(), forCellReuseIdentifier: UserTableViewCell.identifier)
    }
    
    func configTextAndColors() {
        nameLabel.text = "Nome:"
        userPictureView.image = UIImage(systemName: "person.circle.fill")
        userPictureView.tintColor = .black
        nameTextField.placeholder = "Digite seu nome"
        addButton.setTitle("Adicionar", for: .normal)
        photoEditButton.setTitle("Editar Foto", for: .normal)
    }

    @IBAction func tappedPhotoEditButton(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true)
    }
    
    @IBAction func addTappedButton(_ sender: UIButton) {
        dataList.append(User(name: nameTextField.text ?? "", image: userPictureView.image ?? UIImage()))
        usersTableView.reloadData()
        nameTextField.text = ""
        userPictureView.image = UIImage(systemName: "person.circle.fill")
        
// Deslizar para baixo quando adicionar uma nova linha
        usersTableView.scrollToRow(at: IndexPath(row: dataList.count - 1, section: 0), at: .bottom, animated: true)
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
        return 143
    }
}

extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            userPictureView.image = image
        }
        picker.dismiss(animated: true)
    }
}

