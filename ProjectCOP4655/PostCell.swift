//
//  PostCell.swift
//  ProjectCOP4655
//
//  Created by Josef Vodicka on 11/14/22.
//

import UIKit

class PostCell: UITableViewCell {

    
    @IBOutlet weak var postText: UILabel!
    @IBOutlet weak var postName: UILabel!
    @IBOutlet weak var postUserName: UILabel!
    @IBOutlet weak var postDate: UILabel!
    @IBOutlet weak var likeCount: UILabel!
    
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
