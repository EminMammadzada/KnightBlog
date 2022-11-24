//
//  MainFeedViewController.swift
//  ProjectCOP4655
//
//  Created by Josef Vodicka on 11/14/22.
//

import UIKit
import Parse

class MainFeedViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    var posts = [PFObject]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 240
        
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let query = PFQuery(className: "Blog")
        query.includeKeys(["author", "likeCount", "text", "tags", "title", "createdAt", "objectId"])
        query.limit = 20
        
        query.findObjectsInBackground { (posts, error) in
            if posts != nil{
                self.posts = posts!
                self.tableView.reloadData()
            }
        }
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
        let post = posts[indexPath.row]
        let user = post["author"] as! PFUser
        
        var date = Date()
        date = post.createdAt!
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/YY"
        let creationDate = dateFormatter.string(from: date)
        
        
        cell.postName.text = post["title"] as? String
        cell.postText.text = post["text"] as? String
        cell.postUserName.text = user.username
        cell.postDate.text = creationDate
        cell.likeCount.text = String((post["likeCount"] as? Int)!)
        //cell.postTopic.text = post["tags"] as? String //donest work idk why
        return cell;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let blogViewController = segue.destination as? BlogViewController,
                let index = tableView.indexPathForSelectedRow?.row
                else {
                    return
            }
        blogViewController.passedData = posts[index].objectId!
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
