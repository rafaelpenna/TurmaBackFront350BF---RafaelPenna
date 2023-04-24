//
//  ViewController.swift
//  uitextfield
//
//  Created by Rafael Penna on 23/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nameTextField: UITextField!
    @IBOutlet var adressTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        adressTextField.delegate = self
        passwordTextField.delegate = self
        
        loginButton.isEnabled = false
    }
    
    func validateButton(){
        if nameTextField.text == "" || adressTextField.text == "" || passwordTextField.text == "" {
            loginButton.isEnabled = false
        } else {
            loginButton.isEnabled = true
        }
    }

    @IBAction func createUser(_ sender: Any) {
        print("Cadastro realizado com sucesso!")
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        let field = textField
        field.layer.borderColor = UIColor.blue.cgColor
        field.layer.borderWidth = 1
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        let field = textField
        if field.hasText == false {
            field.layer.borderColor = UIColor.red.cgColor
            field.layer.borderWidth = 2
        } else {
            field.layer.borderColor = UIColor.lightGray.cgColor
            field.layer.borderWidth = 1
        }
        validateButton()
    }
    
}

