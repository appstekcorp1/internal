//
//  userProfileViewController.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 04/09/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class userProfileViewController: UIViewController {
    
    
    @IBOutlet weak var border_Img: UIImageView!
    @IBOutlet weak var editImg: UIImageView!
    
    @IBOutlet weak var border_View: UIView!
    @IBOutlet weak var imgView: UIImageView!
    
    @IBOutlet weak var saveBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        
        border_Img.layer.borderWidth = 0.9
        border_Img.layer.borderColor = borderColor.cgColor
        
        border_View.layer.borderWidth = 0.9
        border_View.layer.borderColor = borderColor.cgColor
        border_View.layer.cornerRadius = 25
        
         
        imgView.layer.cornerRadius = 15
        imgView.layer.borderWidth = 0.9
        imgView.layer.borderColor = borderColor.cgColor
        
        saveBtn.layer.cornerRadius = 20
        editImg.layer.borderWidth = 3.0
        editImg.layer.cornerRadius = 20
        editImg.layer.borderColor = UIColor.white.cgColor
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
