//
//  Tela03ViewController.swift
//  NavigationProgrammatically6screens
//
//  Created by Rafael Penna on 06/04/23.
//

import UIKit

class Tela03ViewController: UIViewController {

    @IBOutlet var backTela02: UIButton!
    
    @IBOutlet var fowardTela04: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backTela02Tapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func fowardTela04Tapped(_ sender: Any) {
        let vc4: Tela04ViewController? = UIStoryboard(name: "Tela04ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela04ViewController") as? Tela04ViewController
        navigationController?.pushViewController(vc4 ?? UIViewController(), animated: true)
    }
    
}
