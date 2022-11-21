//
//  LoginViewController.swift
//  ProjectCOP4655
//
//  Created by Emin Mammadzada on 11/14/22.
//

import UIKit
import Parse

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var switchToRegisterButton: UIButton!
    @IBOutlet weak var usernameTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func onLoginPressed(_ sender: UIButton) {
        if true{
            self.performSegue(withIdentifier: "loginToMainSegue", sender: nil)
        }
       
    }
    
    @IBAction func onSwitchToRegisterPressed(_ sender: UIButton) {
        if true{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let registerVC = storyboard.instantiateViewController(identifier: "RegisterViewController")
            registerVC.modalPresentationStyle = .fullScreen
            present(registerVC, animated: false, completion: nil)
        }
       
    }
    
}
