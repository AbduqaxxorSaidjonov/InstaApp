//
//  PostTableViewCell.swift
//  InstaApp
//
//  Created by Abduqaxxor on 20/1/22.
//

import UIKit

class PostTableViewCell: UITableViewCell {

    @IBOutlet var personImageView: UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var postView1: UIImageView!
    @IBOutlet var postView2: UIImageView!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
