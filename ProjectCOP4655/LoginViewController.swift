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
    @IBOutlet weak var errorLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        errorLabel.text = "Error"
        errorLabel.textColor = .white
    }
    
    
    @IBAction func onLoginPressed(_ sender: UIButton) {
        
        if usernameTextfield.text?.count == 0 || passwordTextfield.text?.count == 0{
            self.errorLabel.text = "Error: Some fields are empty"
            self.errorLabel.textColor = .red
        }
        
        else{
            let username = usernameTextfield.text!
            let password = passwordTextfield.text!
            
            PFUser.logInWithUsername(inBackground: username, password: password) {(user, error) in
                    if user != nil{
                        self.performSegue(withIdentifier: "loginToMainSegue", sender: nil)
                    } else{
                        self.errorLabel.text = error?.localizedDescription ?? "smth went wrong"
                        self.errorLabel.textColor = .red
                    }
                }
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
