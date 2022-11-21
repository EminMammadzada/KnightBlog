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
    @IBOutlet weak var postDate: UILabel!
    @IBOutlet weak var postTitle: UITextView!
    @IBOutlet weak var postText: UITextView!
    @IBOutlet weak var postLikes: UILabel!
    
    var passedData: [String: any Hashable] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("*************************************")
        print(passedData)
        postText?.text = passedData["text"] as? String
        postDate?.text = passedData["createdAt"] as? String
        postAuthor?.text = passedData["author"] as? String
        postTitle?.text = passedData["title"] as? String
        postLikes?.text = passedData["likeCount"] as? String
    }
    
    @IBAction func likeButton(_ sender: Any) {
    }
    @IBAction func unlikeButton(_ sender: Any) {
    }
    
}
