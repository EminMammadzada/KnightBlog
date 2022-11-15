//
//  PostCell.swift
//  ProjectCOP4655
//
//  Created by Josef Vodicka on 11/14/22.
//

import UIKit

class PostCell: UITableViewCell {

    
    @IBOutlet weak var PostText: UILabel!
    @IBOutlet weak var PostName: UILabel!
    @IBOutlet weak var postUserName: UILabel!
    @IBOutlet weak var postUserDate: UILabel!
    @IBOutlet weak var postLikes: UIButton!
    @IBOutlet weak var postDislike: UIButton!
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
