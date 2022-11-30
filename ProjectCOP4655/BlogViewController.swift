//
//  BlogViewController.swift
//  ProjectCOP4655
//
//  Created by Sam Dosi on 11/12/22.
//

import UIKit
import Parse

class BlogViewController: UIViewController {
    
    @IBOutlet weak var postAuthor: UILabel!
    @IBOutlet weak var postTitle: UILabel!
    @IBOutlet weak var psotDate: UILabel!
    @IBOutlet weak var postText: UILabel!
    
    var passedData: String = ""
    var object = PFObject(className: "Blog")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.postText.textColor = .secondarySystemBackground
        self.postTitle.textColor = .secondarySystemBackground
        self.postAuthor.textColor = .secondarySystemBackground
        self.psotDate.textColor = .secondarySystemBackground
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        let query = PFQuery(className: "Blog")
        do{
            try query.getObjectWithId(passedData)
            query.includeKeys(["author", "likeCount", "text", "tags", "title", "createdAt"])
            query.limit = 1
            
            query.findObjectsInBackground { (posts, error) in
                if posts != nil{
                    self.object = posts![0]
                    print(self.object["text"]!)
                    
                    var date = Date()
                    date = self.object.createdAt!
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "MM/dd/YY"
                    let creationDate = dateFormatter.string(from: date)
                    
                    self.postText.textColor = .black
                    self.postTitle.textColor = .black
                    self.postAuthor.textColor = .black
                    self.psotDate.textColor = .black
                    
                    self.postText?.text = self.object["text"] as? String
                    self.psotDate?.text = creationDate
                    self.postAuthor?.text = (self.object["author"] as! PFUser).username
                    self.postTitle?.text = self.object["title"] as? String
                }
            }
        }catch{
            print("Error happened")
        }
        
    }
    
    @IBAction func likeButton(_ sender: Any) {
    }
    @IBAction func unlikeButton(_ sender: Any) {
    }
    
}
