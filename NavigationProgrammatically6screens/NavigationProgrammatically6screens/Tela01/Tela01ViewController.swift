//
//  ViewController.swift
//  NavigationProgrammatically6screens
//
//  Created by Rafael Penna on 06/04/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    
    @IBOutlet var fowardTela02Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func fowardTela02Tapped(_ sender: UIButton) {
        let vc2: Tela02ViewController? = UIStoryboard(name: "Tela02ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela02ViewController") as? Tela02ViewController
        navigationController?.pushViewController(vc2 ?? UIViewController(), animated: true)
    }
    

}

