//
//  ViewController.swift
//  NavigationPassingData
//
//  Created by Rafael Penna on 06/04/23.
//

// Exercício de treinamento para envio de dados para outra view controller através de navegação (pushViewController)

import UIKit

class Tela01ViewController: UIViewController {

    @IBOutlet var typeTextField: UITextField!
    @IBOutlet var sendButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        let vc2 = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(identifier: "Tela02ViewController", creator: { coder -> Tela02ViewController? in
            return Tela02ViewController(coder: coder, name: self.typeTextField.text ?? "")
        })
        navigationController?.pushViewController(vc2, animated: true)
    }
    
}

