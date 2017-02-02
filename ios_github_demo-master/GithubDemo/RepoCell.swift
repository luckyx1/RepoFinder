//
//  RepoCell.swift
//  GithubDemo
//
//  Created by Rob Hernandez on 2/1/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit
import AFNetworking

class RepoCell: UITableViewCell {
    
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ownerLabel: UILabel!
    @IBOutlet weak var forksCountLabel: UILabel!
    @IBOutlet weak var starsCountLabel: UILabel!
    @IBOutlet weak var avatarImage: UIImageView!

    
    var repo: GithubRepo! {
        
        didSet{
        
            nameLabel.text = repo.name
            descriptionLabel.text = repo.repoDescription
            ownerLabel.text = ("by \(repo.ownerHandle!)")
            forksCountLabel.text = "\(repo.forks!)"
            starsCountLabel.text = "\(repo.stars!)"
            avatarImage.setImageWith(URL(string: repo.ownerAvatarURL!)!)
        
        
        }
        
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        
        
        
        
        
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
