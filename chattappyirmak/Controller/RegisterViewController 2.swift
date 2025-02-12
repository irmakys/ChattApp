//
//  RegisterViewController.swift
//  chattappyirmak
//
//  Created by Ramazan Gökmen on 11.02.2025.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    
    @IBOutlet weak var emailregister: UITextField!
    
    @IBOutlet weak var passwordregister: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    private func showAlert(_ msg: String){
        let alertController = UIAlertController(title: "Error", message: msg , preferredStyle: .alert)
        let alertAction = UIAlertAction(title: "OK", style:.default)
        DispatchQueue.main.async {
            self.present(alertController, animated: true)
            
        }
        
    }
    @IBAction func btnkayit(_ sender: UIButton) {
        Auth.auth().createUser(withEmail: emailregister.text!, password: passwordregister.text!) { (result, error) in
            if ( error == nil) {
                debugPrint("kayıt kayıt başarılı")
                let vc =
                self.storyboard?.instantiateViewController(withIdentifier:"ChatID") as!  WelcomViewController
                self.navigationController?.pushViewController(vc, animated: true)
            } else{
                debugPrint (error)
            }
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


