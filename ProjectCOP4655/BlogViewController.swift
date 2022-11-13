//
//  BlogViewController.swift
//  ProjectCOP4655
//
//  Created by Sam Dosi on 11/12/22.
//

import UIKit
import Parse

class BlogViewController: UIViewController {

    @IBOutlet weak var goBackButton: UIBarButtonItem!
    @IBOutlet weak var tags: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        tags.layer.cornerRadius = 7
    
        tags.layer.masksToBounds = true
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Logoutbutton(_ sender: Any) {
        print("here")
       
        PFUser.logOut()
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewContoroller = main.instantiateViewController(withIdentifier: "") // replace with login page 
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let delegate = windowScene.delegate as? SceneDelegate else {return}
        
        delegate.window?.rootViewController = loginViewContoroller    }
    @IBAction func HomeButton(_ sender: Any) {
        
    }
    
    @IBAction func EditButton(_ sender: Any) {
    }
    @IBAction func MenuButton(_ sender: Any) {
    }
    @IBAction func likeButton(_ sender: Any) {
    }
    @IBAction func unlikeButton(_ sender: Any) {
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
