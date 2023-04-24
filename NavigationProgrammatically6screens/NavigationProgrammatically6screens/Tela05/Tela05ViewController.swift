//
//  Tela05ViewController.swift
//  NavigationProgrammatically6screens
//
//  Created by Rafael Penna on 06/04/23.
//

import UIKit

class Tela05ViewController: UIViewController {
    
    @IBOutlet var backTela04Button: UIButton!
    
    @IBOutlet var fowardTela06Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTela04Tapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func fowardTela06Tapped(_ sender: Any) {
        let vc6: Tela06ViewController? = UIStoryboard(name: "Tela06ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela06ViewController") as? Tela06ViewController
        navigationController?.pushViewController(vc6 ?? UIViewController(), animated: true)
    }
}
