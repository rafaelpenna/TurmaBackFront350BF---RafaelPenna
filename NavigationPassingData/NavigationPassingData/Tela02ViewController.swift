//
//  Tela02ViewController.swift
//  NavigationPassingData
//
//  Created by Rafael Penna on 06/04/23.
//

import UIKit

class Tela02ViewController: UIViewController {


    @IBOutlet var textLabel: UILabel!
    
    @IBOutlet var backButton: UIButton!
    
    let name: String
    
    init?(coder: NSCoder, name: String) {
        self.name = name
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.text = name
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
}
