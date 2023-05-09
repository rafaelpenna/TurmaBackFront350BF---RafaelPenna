//
//  ViewController.swift
//  NotificationCenterProtocol
//
//  Created by Rafael Penna on 04/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var appleLogoImage: UIImageView!
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var clickButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configAtributes()
        configObserver()
    }
    
    private func configAtributes() {
        appleLogoImage.image = UIImage(named: "Image")
        textLabel.text = "Apple"
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(updateMacbook), name: .macbook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(updateiMac), name: .imac, object: nil)
    }
    
    @objc func updateMacbook(_ notification: NSNotification) {
        appleLogoImage.image = UIImage(named: "Image-3")
        textLabel.text = "MacBook Pro"
        view.backgroundColor = notification.object as? UIColor
    }
    
    @objc func updateiMac(_ notification: NSNotification) {
        appleLogoImage.image = UIImage(named: "Image-1")
        textLabel.text = "iMac Pro"
        view.backgroundColor = .yellow
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "SelectionViewController", bundle: nil).instantiateViewController(withIdentifier: "SelectionViewController") as? SelectionViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
        
    }
    
}

