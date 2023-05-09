//
//  SelectionViewController.swift
//  NotificationCenterProtocol
//
//  Created by Rafael Penna on 08/05/23.
//

import UIKit

class SelectionViewController: UIViewController {

    @IBOutlet var optionsLabel: UILabel!
    @IBOutlet var macbookButton: UIButton!
    @IBOutlet var iMacButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configAtributes()
    }
    
    private func configAtributes() {
        optionsLabel.text = "Opções"
    }


    @IBAction func macboockButtonTapped(_ sender: Any) {
        NotificationCenter.default.post(name: .macbook, object: UIColor.blue)
        dismiss(animated: true)
    }
    
    @IBAction func iMacButtonTapped(_ sender: Any) {
        NotificationCenter.default.post(name: .imac, object: nil)
        dismiss(animated: true)
    }
}
