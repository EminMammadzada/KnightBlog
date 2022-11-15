//
//  RegisterViewController.swift
//  ProjectCOP4655
//
//  Created by Emin Mammadzada on 11/14/22.
//

import UIKit

class RegisterViewController: UIViewController {

    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var switchToLoginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onRegisterPressed(_ sender: UIButton) {
        if true{
            self.performSegue(withIdentifier: "registerToMainSegue", sender: nil)
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

