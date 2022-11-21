//
//  RegisterViewController.swift
//  ProjectCOP4655
//
//  Created by Emin Mammadzada on 11/14/22.
//

import UIKit
import Parse

class RegisterViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var switchToLoginButton: UIButton!
    @IBOutlet weak var emailTextfield: UITextField!
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

    @IBAction func onRegisterPressed(_ sender: UIButton) {
        
        if usernameTextfield.text?.count == 0 || passwordTextfield.text?.count == 0 || emailTextfield.text?.count == 0{
            self.errorLabel.text = "Error: Some fields are empty"
            self.errorLabel.textColor = .red
        }
        
        else{
            if let username = usernameTextfield.text,
               let password = passwordTextfield.text,
               let email = emailTextfield.text
            {
                let domain = email.split(separator: "@")[1]
                if domain == "knights.ucf.edu" || domain == "ucf.edu"{
                    let user = PFUser()
                    user.username = username
                    user.email = email
                    user.password = password
                    
                    user.signUpInBackground {(success, error) in
                        if success{
                            self.performSegue(withIdentifier: "registerToMainSegue", sender: nil)
                        } else{
                            self.errorLabel.text = error?.localizedDescription ?? "smth went wrong"
                            self.errorLabel.textColor = .red
                            print("Error: \(error?.localizedDescription ?? "smth went wrong")")
                        }
                    }
                    
                } else{
                    self.errorLabel.text = "Error: Invalid Domain"
                    self.errorLabel.textColor = .red
                }
            }
        }
    }
    
    
    @IBAction func onSwitchToLoginPressed(_ sender: UIButton) {
        if true{
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let loginVC = storyboard.instantiateViewController(identifier: "LoginViewController")
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: false, completion: nil)
        }
    }

}

