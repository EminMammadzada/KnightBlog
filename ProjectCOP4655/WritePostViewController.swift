//
//  WritePostViewController.swift
//  ProjectCOP4655
//
//  Created by Emin Mammadzada on 11/15/22.
//

import UIKit
import Parse
import DropDown
class WritePostViewController: UIViewController {


    @IBOutlet weak var postText: UITextView!
    @IBOutlet weak var titley: UITextField!

    @IBOutlet weak var dropDownText: UILabel!
    @IBOutlet weak var DropDownView: UIView!
    @IBOutlet weak var errorLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    
    let dropDown = DropDown()
    let dropDownValues = ["Business Admin", "Computer Science", "Aerospace", "Job Hunt", "Life Advice", "Other"]
    
    
    @IBOutlet weak var Titley1: UITextField!
    
    var tag:String = "";
    
    override func viewDidLoad() {
        authorLabel.text = PFUser.current()?.username
        var date = Date()
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/YY"
        let creationDate = dateFormatter.string(from: date)
        dateLabel.text = creationDate
        self.errorLabel.text = "*"
        self.errorLabel.textColor = .white
        super.viewDidLoad()
        var itemSelected: [Int] = []
        dropDownText.text = ""
        dropDown.anchorView = DropDownView
        dropDown.dataSource = dropDownValues
        dropDown.bottomOffset = CGPoint(x: 0, y:(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.topOffset = CGPoint(x: 0, y:-(dropDown.anchorView?.plainView.bounds.height)!)
        dropDown.direction = .any
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
          print("Selected item: \(item) at index: \(index)")
            itemSelected.append(index)
            tag = item
            print("array is \(itemSelected)")
            self.dropDownText.backgroundColor = UIColor.systemYellow
            dropDownText.layer.masksToBounds = true
            dropDownText.layer.cornerRadius = 7
           self.dropDownText.text = dropDownValues[index]
            
        }
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        self.errorLabel.text = "Success!"
        self.errorLabel.textColor = .green
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.errorLabel.text = "*"
        self.errorLabel.textColor = .white
    }


    @IBAction func didPublish(_ sender: Any) {
        
        if titley.text?.count == 0 || postText.text?.count == 0{
            self.errorLabel.text = "Error: Some fields are empty"
            self.errorLabel.textColor = .red
        }
        
        
        else{
        let title = titley.text
        let body =  postText.text
        
        let post = PFObject(className: "Blog")
        post["title"] = title
        post["author"] = PFUser.current()!
        post["text"] = body
        post["tags"] = tag
            post.saveInBackground { (success, error) in
                if success{
                    self.errorLabel.text = "Success, your post has been published!"
                    self.errorLabel.textColor = .green
                    self.titley.text?.removeAll()
                    self.postText.text?.removeAll()
                    self.dropDownText.text = ""
                    self.dropDownText.backgroundColor = .white
                    print("saved")
                }else{
                    print("error")
                }
            }
        }
    }
    @IBAction func didCancel1(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
        self.titley.text?.removeAll()
        self.postText.text?.removeAll()
        self.dropDownText.text = ""
        self.dropDownText.backgroundColor = UIColor.white
        print("dismiss")
    }
    @objc private func didTapPost(){
            
    }
    @IBAction func showDropDown(_ sender: Any) {
        dropDown.show()
    }
    @IBAction func onLogOutPressed(_ sender: UIBarButtonItem) {
        PFUser.logOut()
        
        let main = UIStoryboard (name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(identifier: "LoginViewController")
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene, let
        delegate = windowScene.delegate as? SceneDelegate else { return }
        delegate.window? .rootViewController = loginViewController
    }
    

}
