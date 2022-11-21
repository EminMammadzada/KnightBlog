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
    
    
    var posts = [
        [
            "objectId": "1",
            "author": "Emin Mammadzada",
            "createdAt": "11/16/2022",
            "tags": ["Life advice", "Comp Sci"],
            "likeCount": "325",
            "text": "In this post I would like to share my journey as a Computer Science student, my mistakes, regrets, and insights on how to achieve success in college. The rest is bla bla imagine this is lorem.",
            "title": "Mistakes I made as a Computer Science student"
        ],
        [
            "objectId": "2",
            "author": "Josef Vodicka",
            "createdAt": "11/14/2022",
            "tags": ["Comp Sci"],
            "likeCount": "10",
            "text": "I took a very hard semester so you don't have to. I am gonna share my tips and tricks on how to keep up with classes while learning a bunch of new technologies from scratch. The rest is bla bla imagine this is lorem.",
            "title": "Don't take Graphics course"
        ]
    ] as [Any]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 260
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
        let post = posts[indexPath.row]
        cell.postName.text = (post as AnyObject)["title"] as? String
        cell.postText.text = (post as AnyObject)["text"] as? String
        cell.postUserName.text = (post as AnyObject)["author"] as? String
        cell.postDate.text = (post as AnyObject)["createdAt"] as? String
        cell.likeCount.text = (post as AnyObject)["likeCount"] as? String
        return cell;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let blogViewController = segue.destination as? BlogViewController,
                let index = tableView.indexPathForSelectedRow?.row
                else {
                    return
            }
            blogViewController.passedData = posts[index] as! [String : any Hashable]
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
