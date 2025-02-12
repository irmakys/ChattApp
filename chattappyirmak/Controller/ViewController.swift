//
//  ViewController.swift
//  chattappyirmak
//
//  Created by Ramazan Gökmen on 11.02.2025.
//

import UIKit

class ViewController: UIViewController {
    
    //PROPERTİES
    let stoaryboard = UIStoryboard(name: "Main", bundle: nil)

    
    //FUNCTIONS 
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btn_giris(_ sender: UIButton) {
        let vc =
        stoaryboard.instantiateViewController(withIdentifier: "kayitID" )
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func btn_kayıt(_ sender: UIButton) {
        let vc =
        stoaryboard.instantiateViewController(withIdentifier: "girisID" )
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

