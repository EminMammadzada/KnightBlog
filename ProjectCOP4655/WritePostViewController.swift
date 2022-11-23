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

    @IBOutlet weak var dropDownText: UILabel!
    @IBOutlet weak var DropDownView: UIView!
    let dropDown = DropDown()
    let dropDownValues = ["Business Admin", "Computer Science", "Aerospace", "Job Hunt", "Life Advice", "Other"]
    
    override func viewDidLoad() {
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
            print("array is \(itemSelected)")
            self.dropDownText.backgroundColor = UIColor.systemYellow
            dropDownText.layer.masksToBounds = true
            dropDownText.layer.cornerRadius = 7
           self.dropDownText.text = dropDownValues[index]
        }
        
    
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
