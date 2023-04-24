//
//  Tela04ViewController.swift
//  NavigationProgrammatically6screens
//
//  Created by Rafael Penna on 06/04/23.
//

import UIKit

class Tela04ViewController: UIViewController {
    
    
    @IBOutlet var backTela03Button: UIButton!
    
    @IBOutlet var fowardTela05Button: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func backTela03Tapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func foward05Tapped(_ sender: Any) {
        let vc5: Tela05ViewController? = UIStoryboard(name: "Tela05ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela05ViewController") as? Tela05ViewController
        navigationController?.pushViewController(vc5 ?? UIViewController(), animated: true)
    }
    
}
