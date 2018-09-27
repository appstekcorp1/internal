//
//  ProjectDetailsCollectionViewCell.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 08/08/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class ProjectDetailsCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ImgView: UIImageView!
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var delayedBar: UIProgressView!
    @IBOutlet weak var completedBar: UIProgressView!
    
    @IBOutlet weak var DeliveryView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 6)
        delayedBar.transform = delayedBar.transform.scaledBy(x: 1, y: 6)
        completedBar.transform = completedBar.transform.scaledBy(x: 1, y: 6)
        
        DeliveryView.layer.cornerRadius = 15
        
        
    }
    
}
