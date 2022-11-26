//
//  PostCell.swift
//  ProjectCOP4655
//
//  Created by Josef Vodicka on 11/14/22.
//

import UIKit

class PostCell: UITableViewCell {

    
    @IBOutlet weak var postText: CustomLabel!
    @IBOutlet weak var postName: UILabel!
    @IBOutlet weak var postUserName: UILabel!
    @IBOutlet weak var postDate: UILabel!
    @IBOutlet weak var likeCount: UILabel!
    @IBOutlet weak var postTopic: CustomTopic!
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBAction func deleteButton(_ sender: Any) {//handles deleting a post
        
        print("Delete pressed")
        
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
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
