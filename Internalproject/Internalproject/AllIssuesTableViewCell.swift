//
//  AllIssuesTableViewCell.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 10/08/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class AllIssuesTableViewCell: UITableViewCell {
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        dd.layer.cornerRadius = 5
        dd.layer.borderWidth = 0.2
        
        
    }
    
  
    @IBOutlet weak var dd: UIView!
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
