//
//  CurrentProjectsCollectionViewCell.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 01/08/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class CurrentProjectsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var ImgView: UIImageView!
    
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var delayedBar: UIProgressView!
    @IBOutlet weak var complatedBar: UIProgressView!
    @IBOutlet weak var deliveryView: UIView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 6)
        delayedBar.transform = delayedBar.transform.scaledBy(x: 1, y: 6)
        complatedBar.transform = complatedBar.transform.scaledBy(x: 1, y: 6)
        
        deliveryView.layer.cornerRadius = 15
        
        
    }
    
}
