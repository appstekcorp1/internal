//
//  ProjectDetailsViewController.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 08/08/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class ProjectDetailsViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var projectDetailsCollection: UICollectionView!
    
    @IBOutlet weak var projectCurrentIssues: UICollectionView!
    
    @IBOutlet weak var currentIssues_Label: UILabel!
    
    @IBOutlet weak var viewAll_Btn: UIButton!
    
    @IBOutlet weak var viewlayer: UIView!
    @IBOutlet weak var noofissues_Label: UILabel!
    
    @IBOutlet weak var closedIssues_Label: UILabel!
    
    @IBOutlet weak var pendingIssues_Label: UILabel!
    
    @IBOutlet weak var timeDuration_Label: UILabel!
    
    @IBOutlet weak var workingOn_Label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewAll_Btn.layer.cornerRadius = 15
        viewlayer.layer.cornerRadius = 5
        viewlayer.layer.borderWidth = 0.2
        
        noofissues_Label.adjustsFontSizeToFitWidth = true
        closedIssues_Label.adjustsFontSizeToFitWidth = true
        pendingIssues_Label.adjustsFontSizeToFitWidth = true
        timeDuration_Label.adjustsFontSizeToFitWidth = true
        workingOn_Label.adjustsFontSizeToFitWidth = true

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
        if collectionView == projectDetailsCollection {
            let cell:ProjectDetailsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "projectDetailCell", for: indexPath) as! ProjectDetailsCollectionViewCell
            
            cell.layer.cornerRadius = 5
            cell.layer.borderWidth = 0.2
            
            return cell
        }
        else if collectionView == projectCurrentIssues {
            let cell:ProjectCurrentIssuesCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "CurrentIssuesCell", for: indexPath) as! ProjectCurrentIssuesCollectionViewCell
            
            
            
            cell.layer.cornerRadius = 5
            cell.layer.borderWidth = 0.2
            
            return cell
        }
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CurrentIssuesCell", for: indexPath)
        
        return cell
        
        }
    
    @IBAction func backBtnClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
