//
//  ViewController.swift
//  NavigationProgrammatically
//
//  Created by Rafael Penna on 06/04/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    @IBOutlet var modalButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonTapped(_ sender: Any) {
        let vc2: Tela02ViewController? = UIStoryboard(name: "Tela02", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        present(vc2 ?? UIViewController(), animated: true)
        
    }
}

