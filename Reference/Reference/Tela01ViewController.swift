//
//  ViewController.swift
//  Reference
//
//  Created by Rafael Penna on 06/04/23.
//

import UIKit

class Tela01ViewController: UIViewController {

    @IBOutlet var buttonReference: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    @IBAction func buttonTapped(_ sender: Any) {
        performSegue(withIdentifier: "showTela02", sender: nil)
    }
}

