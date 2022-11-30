//
//  PostCell.swift
//  ProjectCOP4655
//
//  Created by Josef Vodicka on 11/14/22.
//

import UIKit
import Parse


protocol CustomCellUpdater: AnyObject {
    func updateTableView()
}



class PostCell: UITableViewCell {

    
    @IBOutlet weak var postText: CustomLabel!
    @IBOutlet weak var postName: UILabel!
    @IBOutlet weak var postUserName: UILabel!
    @IBOutlet weak var postDate: UILabel!
    @IBOutlet weak var postTopic: CustomTopic!
    @IBOutlet weak var deleteButton: UIButton!
    
    
    var postId: String = ""
    
    weak var delegate: CustomCellUpdater?
    
    
    func yourFunctionWhichDoesNotHaveASender () {
        delegate!.updateTableView()
    }
    

    /* func addTopAndBottomBorders() {
        let thickness: CGFloat = 2.0
        let bottomBorder = CALayer()
        bottomBorder.frame = CGRect(x:0, y: self.frame.size.height - thickness, width: self.frame.size.width, height:thickness)
        bottomBorder.backgroundColor = UIColor.red.cgColor
        self.layer.addSublayer(bottomBorder)
    }
    */

    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func deletePressed(_ sender: UIButton) {
        print("delete pressed")
        let query = PFQuery(className: "Blog")
        query.whereKey("objectId", equalTo: postId)
        query.findObjectsInBackground {
            (objects, error) -> Void in
            for object in objects!{
                (object as PFObject).deleteInBackground()
                self.yourFunctionWhichDoesNotHaveASender()
            }
        }
        
    }
    
    @IBAction func likePressed(_ sender: UIButton) {
        print("like pressed")
    }
    
}
