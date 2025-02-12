//
//  LoginViewController.swift
//  chattappyirmak
//
//  Created by Ramazan Gökmen on 11.02.2025.
//

import UIKit
import FirebaseCore
import FirebaseAuth

class LoginViewController: UIViewController {

    
    //PROPERTİES
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    //FUNCTİONS
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnClickGiris(_ sender: UIButton) {
        Auth.auth().createUser(withEmail:emailTextField.text!, password:passwordTextField.text!) { user, error in
            if (error != nil ) { debugPrint ("Giriş Başarılı")
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "ChatID") as! WelcomViewController
                self.navigationController?.pushViewController(vc, animated: true)
            } else{
                debugPrint (error)
            }
            
            
        }
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
