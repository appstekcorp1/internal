//
//  SelectedTeamCollectionViewCell.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 03/08/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class SelectedTeamCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var appName_Label: UILabel!
    
    @IBOutlet weak var teamName_Label: UILabel!
    
    @IBOutlet weak var created_Label: UILabel!
    
    @IBOutlet weak var progress_Label: UILabel!
    
    @IBOutlet weak var delayed_Label: UILabel!
    @IBOutlet weak var completed_Label: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var delayedBar: UIProgressView!
    @IBOutlet weak var completedBar:
    UIProgressView!
   
    @IBOutlet weak var delivery_Label: UILabel!
    @IBOutlet weak var date_Label: UILabel!
    @IBOutlet weak var deliveryView: UIView!
    @IBOutlet weak var progressStatus_Label: UILabel!
    @IBOutlet weak var delayedStatus_Label: UILabel!
    @IBOutlet weak var completedStatus_Label: UILabel!
    @IBOutlet weak var progressRemain_Label: UILabel!
    @IBOutlet weak var delayedRemain_Label: UILabel!
    @IBOutlet weak var completedRemain_Label: UILabel!
    @IBOutlet weak var people_Img: UIImageView!
    @IBOutlet weak var people_Label: UILabel!
    @IBOutlet weak var peopleCount_Label: UILabel!
    @IBOutlet weak var completedDays_Img: UIImageView!
    @IBOutlet weak var completedDays_Label: UILabel!
    @IBOutlet weak var completedDaysCount_Label: UILabel!
    @IBOutlet weak var completedIn_Img: UIImageView!
    @IBOutlet weak var completedIn_Label: UILabel!
    @IBOutlet weak var completedInCount_Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        progressBar.transform = progressBar.transform.scaledBy(x: 1, y: 6)
        delayedBar.transform = delayedBar.transform.scaledBy(x: 1, y: 6)
        completedBar.transform = completedBar.transform.scaledBy(x: 1, y: 6)
        
        appName_Label.adjustsFontSizeToFitWidth = true
        teamName_Label!.adjustsFontSizeToFitWidth = true
        created_Label!.adjustsFontSizeToFitWidth = true
        delivery_Label!.adjustsFontSizeToFitWidth = true
        progressRemain_Label!.adjustsFontSizeToFitWidth = true
        delayedRemain_Label!.adjustsFontSizeToFitWidth = true
        completedRemain_Label!.adjustsFontSizeToFitWidth = true
        
        
        
        date_Label!.adjustsFontSizeToFitWidth = true
        progress_Label!.adjustsFontSizeToFitWidth = true
        progressStatus_Label!.adjustsFontSizeToFitWidth = true
        delayed_Label!.adjustsFontSizeToFitWidth = true
        delayedStatus_Label!.adjustsFontSizeToFitWidth = true
        completed_Label!.adjustsFontSizeToFitWidth = true
        people_Label!.adjustsFontSizeToFitWidth = true
        peopleCount_Label!.adjustsFontSizeToFitWidth = true
        completedDays_Label!.adjustsFontSizeToFitWidth = true
        completedDaysCount_Label.adjustsFontSizeToFitWidth = true
        completedIn_Label!.adjustsFontSizeToFitWidth = true
        completedInCount_Label!.adjustsFontSizeToFitWidth = true
        deliveryView.layer.cornerRadius = 15
        
    }
    
    
    
    
    
    
}
