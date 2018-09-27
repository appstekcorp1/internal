//
//  LoginViewController.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 30/07/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var logo_Img: UIImageView!
    @IBOutlet weak var Email_label: UILabel!
    @IBOutlet weak var Email_Textfield: UITextField!
    @IBOutlet weak var Password_label: UILabel!
    @IBOutlet weak var Password_Textfield: UITextField!
    @IBOutlet weak var ForgotPassword_label: UIButton!
    @IBOutlet weak var login_Btn: UIButton!
    @IBOutlet weak var Dont_have_an_account_Btn: UIButton!
    @IBOutlet weak var border_Img: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        Email_Textfield.delegate = self
        Password_Textfield.delegate = self
        
        login_Btn.layer.cornerRadius = 20
        Dont_have_an_account_Btn.layer.cornerRadius = 18
        border_Img.layer.borderWidth = 0.9
        
        border_Img.layer.borderColor = borderColor.cgColor
        
        // Do any additional setup after loading the view.
    }

    
    func isValidEmail(testStr:String) -> Bool {
        // print("validate calendar: \(testStr)")
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
        
    }
    
    @IBAction func logBtnClicked(_ sender: Any) {
        let Email:NSString = Email_Textfield.text! as NSString
        let password:NSString = Password_Textfield.text! as NSString
        
        let providedEmailAddress = Email_Textfield.text
        let isEmailAddressValid = isValidEmail(testStr: providedEmailAddress!)
        
        if ( Email.isEqual(to: "") || password.isEqual(to: "")){
            let alertController = UIAlertController(title: "Alert", message: "All Field Are Manditory.", preferredStyle: UIAlertControllerStyle.alert)
            let DestructiveAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
                print("Settings")
            }
            alertController.addAction(DestructiveAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
            
        else if !isEmailAddressValid
        {
            displayAlertMessage(messageToDisplay: "Email address is not valid")
        }
            
        else if (password.length <= 7) {
            
            let alertController = UIAlertController(title: "Alert", message: "Password should contain 7 characters", preferredStyle: UIAlertControllerStyle.alert)
            let DestructiveAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default) { (result : UIAlertAction) -> Void in
                print("Password should contain 7 characters")
            }
            
            alertController.addAction(DestructiveAction)
            
            self.present(alertController, animated: true, completion: nil)
            
        }
       
    }
    
    func displayAlertMessage(messageToDisplay: String)
    {
        let alertController = UIAlertController(title: "Alert", message: messageToDisplay, preferredStyle: .alert)
        
        let OKAction = UIAlertAction(title: "OK", style: .default) { (action:UIAlertAction!) in
            
            // Code in this block will trigger when OK button tapped.
            print("Ok button tapped");
            
        }
        
        alertController.addAction(OKAction)
        
        self.present(alertController, animated: true, completion:nil)
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
