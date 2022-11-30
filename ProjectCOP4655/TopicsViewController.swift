//
//  TopicsViewController.swift
//  ProjectCOP4655
//
//  Created by Emin Mammadzada on 11/15/22.
//

import UIKit
import Parse

class TopicsViewController: UIViewController {

    @IBOutlet weak var subToCS: UIButton!
    @IBOutlet weak var subToBA: UIButton!
    @IBOutlet weak var subToAE: UIButton!
    @IBOutlet weak var subToJH: UIButton!
    @IBOutlet weak var subToLA: UIButton!
    @IBOutlet weak var subToOther: UIButton!
    
    var tags: [String] = [""]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    
    func updateTags(tag: String, remove: Bool){
        if remove == false{
            PFUser.current()!["tags"] = PFUser.current()!["tags"] as! Array<Any?> + [tag]
            PFUser.current()?.saveEventually()
            PFUser.current()?.fetchInBackground()
        } else{
            PFUser.current()!["tags"] = (PFUser.current()!["tags"] as! Array<Any?>).filter {$0 as! String != tag}
            PFUser.current()?.saveEventually()
            PFUser.current()?.fetchInBackground()
        }
    }
    
    func updateUI(){
        if let tags = PFUser.current()!["tags"] as? [String] {
            self.tags = tags
            print(tags)
        }
        
        if self.tags.contains("Computer Science") {
            subToCS.setTitle("Unsubscribe", for: .normal)
            subToCS.backgroundColor = .red
        }
        
        if self.tags.contains("Business Admin") {
            subToBA.setTitle("Unsubscribe", for: .normal)
            subToBA.backgroundColor = .red
        }
        
        if self.tags.contains("Aerospace") {
            subToAE.setTitle("Unsubscribe", for: .normal)
            subToAE.backgroundColor = .red
        }
        
        if self.tags.contains("Job Hunt") {
            subToJH.setTitle("Unsubscribe", for: .normal)
            subToJH.backgroundColor = .red
        }
        
        if self.tags.contains("Life Advice") {
            subToLA.setTitle("Unsubscribe", for: .normal)
            subToLA.backgroundColor = .red
        }
        
        if self.tags.contains("Other") {
            subToOther.setTitle("Unsubscribe", for: .normal)
            subToOther.backgroundColor = .red
        }
        
        
    }
    
    // CLICK METHODS HERE
    
    @IBAction func onCS(_ sender: Any) {
        if subToCS.titleLabel?.text == "Unsubscribe"{
            subToCS.setTitle("Subscribe", for: .normal)
            subToCS.backgroundColor = .black
            updateTags(tag: "Computer Science", remove: true)
        } else{
            subToCS.setTitle("Unsubscribe", for: .normal)
            subToCS.backgroundColor = .red
            updateTags(tag: "Computer Science", remove: false)
        }
    }
    
    @IBAction func onBA(_ sender: Any) {
        if subToBA.titleLabel?.text == "Unsubscribe"{
            subToBA.setTitle("Subscribe", for: .normal)
            subToBA.backgroundColor = .black
            updateTags(tag: "Business Admin", remove: true)
        } else{
            subToBA.setTitle("Unsubscribe", for: .normal)
            subToBA.backgroundColor = .red
            updateTags(tag: "Business Admin", remove: false)
        }
    }
    
    @IBAction func onAE(_ sender: Any) {
        if subToAE.titleLabel?.text == "Unsubscribe"{
            subToAE.setTitle("Subscribe", for: .normal)
            subToAE.backgroundColor = .black
            updateTags(tag: "Aerospace", remove: true)
        } else{
            subToAE.setTitle("Unsubscribe", for: .normal)
            subToAE.backgroundColor = .red
            updateTags(tag: "Aerospace", remove: false)
        }
    }
    
    @IBAction func onJH(_ sender: Any) {
        if subToJH.titleLabel?.text == "Unsubscribe"{
            subToJH.setTitle("Subscribe", for: .normal)
            subToJH.backgroundColor = .black
            updateTags(tag: "Job Hunt", remove: true)
        } else{
            subToJH.setTitle("Unsubscribe", for: .normal)
            subToJH.backgroundColor = .red
            updateTags(tag: "Job Hunt", remove: false)
        }
    }
    
    @IBAction func onLA(_ sender: Any) {
        if subToLA.titleLabel?.text == "Unsubscribe"{
            subToLA.setTitle("Subscribe", for: .normal)
            subToLA.backgroundColor = .black
            updateTags(tag: "Life Advice", remove: true)
        } else{
            subToLA.setTitle("Unsubscribe", for: .normal)
            subToLA.backgroundColor = .red
            updateTags(tag: "Life Advice", remove: false)
        }
    }
    
    @IBAction func onOther(_ sender: Any) {
        if subToOther.titleLabel?.text == "Unsubscribe"{
            subToOther.setTitle("Subscribe", for: .normal)
            subToOther.backgroundColor = .black
            updateTags(tag: "Other", remove: true)
        } else{
            subToOther.setTitle("Unsubscribe", for: .normal)
            subToOther.backgroundColor = .red
            updateTags(tag: "Other", remove: false)
        }
    }
    
    
}

