//
//  InsertNameViewController.swift
//  chellengeNotificationCenter
//
//  Created by Rafael Penna on 09/05/23.
//

import UIKit

class InsertNameViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var addNameButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configtTextAndButton()
    }
    
    private func configtTextAndButton() {
        titleLabel.text = "Insira o nome desejado"
        nameTextField.placeholder = "Digite o nome"
        addNameButton.setTitle("Adicionar", for: .normal)
    }


    @IBAction func addNameButtonTapped(_ sender: Any) {
        NotificationCenter.default.post(name: Notification.Name("addName"), object: nameTextField.text)
        navigationController?.popViewController(animated: true)
    }
    
}
