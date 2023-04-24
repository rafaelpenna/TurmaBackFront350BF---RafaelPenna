//
//  Tela02ViewController.swift
//  NavigationProgrammatically6screens
//
//  Created by Rafael Penna on 06/04/23.
//

import UIKit

class Tela02ViewController: UIViewController {

    @IBOutlet var backTela01: UIButton!
    
    @IBOutlet var fowardTela03Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backTela01Tapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func fowardTela03Tapped(_ sender: Any) {
        let vc3: Tela03ViewController? = UIStoryboard(name: "Tela03ViewController", bundle: nil).instantiateViewController(withIdentifier: "Tela03ViewController") as? Tela03ViewController
        navigationController?.pushViewController(vc3 ?? UIViewController(), animated: true)
    }
    
}
