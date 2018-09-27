//
//  HomeViewController.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 31/07/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource  {
    
    @IBOutlet weak var current_Issuse_Tickets: UICollectionView!
    
    @IBOutlet weak var current_Projects: UICollectionView!
    
    @IBOutlet weak var issue_Status: UIView!
    
    @IBOutlet weak var Android_View: UIView!
    
    @IBOutlet weak var Php_View: UIView!
    
    @IBOutlet weak var Design_View: UIView!
    
    @IBOutlet weak var iOS_View: UIView!
    
    @IBOutlet weak var DotNet_View: UIView!
    
    @IBOutlet weak var testing_View: UIView!
    
    var issueStatus_ViewBool: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        issue_Status.alpha = 0.0
        issueStatus_ViewBool = false
        iOS_View.layer.cornerRadius = iOS_View.frame.width/2
        Android_View.layer.cornerRadius = Android_View.frame.width/2
        Php_View.layer.cornerRadius = Php_View.frame.width/2
        Design_View.layer.cornerRadius = Design_View.frame.width/2
        DotNet_View.layer.cornerRadius = DotNet_View.frame.width/2
        testing_View.layer.cornerRadius = testing_View.frame.width/2
        issue_Status.layer.cornerRadius = 5
        issue_Status.layer.borderWidth = 0.1
        
        current_Issuse_Tickets.delegate = self
        current_Issuse_Tickets.dataSource = self
        
        
        current_Projects.delegate = self
        current_Projects.dataSource = self
        
      
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.current_Issuse_Tickets
        {
           
            let cell:CurrentIssuseTicketsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "currentIssuseTicketsCell", for: indexPath) as! CurrentIssuseTicketsCollectionViewCell
            
            return cell
            
        }
            
        else if collectionView == self.current_Projects
        {
            
            let cell:CurrentProjectsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "currentProjectsCell", for: indexPath) as! CurrentProjectsCollectionViewCell
            
            cell.layer.cornerRadius = 5
            cell.layer.borderWidth = 0.3
            
            return cell
           
        }
        else {
            let cell:CurrentIssuseTicketsCollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "currentIssuseTicketsCell", for: indexPath) as! CurrentIssuseTicketsCollectionViewCell
            
            return cell
        }
        
        
    }
    
    @IBAction func IssueStatusClicked(_ sender: Any) {
        if (issueStatus_ViewBool == false) {
            issueStatus_ViewBool = true
            issue_Status.alpha = 1.0
        }
        else{
            issueStatus_ViewBool = false
            issue_Status.alpha = 0.0
        }
        
        
    }
    
    
    @IBAction func userProfileClicked(_ sender: Any) {
        
        performSegue(withIdentifier: "userProfilesegue", sender: self)
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
