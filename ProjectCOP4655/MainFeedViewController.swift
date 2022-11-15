//
//  MainFeedViewController.swift
//  ProjectCOP4655
//
//  Created by Josef Vodicka on 11/14/22.
//

import UIKit

class MainFeedViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    
    //var posts: [PFObject]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 220
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! PostCell
        //All cell operations will be handled here.
        cell.PostText.layer.masksToBounds = true
        cell.PostText.layer.borderWidth = 2
        cell.PostText.layer.borderColor = UIColor.black.cgColor
        cell.PostText.layer.cornerRadius = 10
        
        
        
        
        
        return cell;
    }
    
    

}
