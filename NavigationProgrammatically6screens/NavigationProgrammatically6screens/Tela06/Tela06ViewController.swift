//
//  Tela06ViewController.swift
//  NavigationProgrammatically6screens
//
//  Created by Rafael Penna on 06/04/23.
//

import UIKit

class Tela06ViewController: UIViewController {
    
    @IBOutlet var backTela05Button: UIButton!
    
    
    @IBOutlet var backTelaHomeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backTela05Tapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func backTelaHomeTapped(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    

}
