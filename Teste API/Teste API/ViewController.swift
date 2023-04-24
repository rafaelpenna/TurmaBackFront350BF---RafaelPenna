//
//  ViewController.swift
//  Teste API
//
//  Created by Rafael Penna on 19/04/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var cep: UITextField!
    @IBOutlet var test1: UILabel!
    @IBOutlet var test2: UILabel!
    @IBOutlet var test3: UILabel!
    @IBOutlet var test4: UILabel!
    @IBOutlet var test5: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tappedButton(_ sender: UIButton) {
        WebService.pesquisaCEP(cep.text!) { (cep) in
            DispatchQueue.main.sync {
                self.test1.text = "Logrradouro: \(cep.data.driverTable.drivers[0].driverId)"
                self.test2.text = "Localidade/UF: \(cep.data.driverTable.drivers[0].code)"
                self.test3.text = "DDD: \(cep.data.driverTable.drivers[0].permanentNumber)"
            }
        }
    }
    
}

