//
//  LoginsignupViewController.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 30/07/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class LoginsignupViewController: UIViewController {
    
    @IBOutlet weak var loginsignupview: UIView!
    
    @IBOutlet weak var login_Btn: UIButton!
    
    @IBOutlet weak var signup_Btn: UIButton!
    @IBOutlet weak var loginContainerView: UIView!
    @IBOutlet weak var signupContainerView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signupContainerView.alpha = 0
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginBtnclicked(_ sender: Any) {
        UIView.animate(withDuration: 0.5, animations: {
            self.loginContainerView.alpha = 1
            self.signupContainerView.alpha = 0
        })
        
    }
    
    
    @IBAction func singupBtnclicked(_ sender: Any) {
        UIView.animate(withDuration: 0.5, animations: {
            self.loginContainerView.alpha = 0
            self.signupContainerView.alpha = 1
        })
    }
    
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
