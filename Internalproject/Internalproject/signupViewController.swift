//
//  signupViewController.swift
//  Internalproject
//
//  Created by Kaleswara Rao Ravela on 30/07/18.
//  Copyright © 2018 Kaleswara Rao Ravela. All rights reserved.
//

import UIKit

class signupViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var logo_Img: UIView!
    @IBOutlet weak var name_Label: UILabel!
    @IBOutlet weak var name_TextField: UITextField!
    @IBOutlet weak var Emalid_Label: UILabel!
    @IBOutlet weak var email_TextField: UITextField!
    @IBOutlet weak var password_Label: UILabel!
    @IBOutlet weak var password_TextField: UITextField!
    @IBOutlet weak var employeeid_Label: UILabel!
    @IBOutlet weak var employee_TextField: UITextField!
    @IBOutlet weak var department_Label: UILabel!
    @IBOutlet weak var department_Btn: UIButton!
    @IBOutlet weak var department_table: UITableView!
    @IBOutlet weak var designation_Label: UILabel!
    @IBOutlet weak var designation_Btn: UIButton!
    @IBOutlet weak var designation_Table: UITableView!
    @IBOutlet weak var border_Img: UIImageView!
    @IBOutlet weak var signup_Btn: UIButton!
    
    var departmentArray = ["iOS","Android","PHP","OracleDBA"]
    var designationArray = ["developer","Tester","TeamLead","ProjectManager"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        department_table.isHidden = true
        designation_Table.isHidden = true
        signup_Btn.layer.cornerRadius = 20
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        border_Img.layer.borderWidth = 1.0
        border_Img.layer.borderColor = borderColor.cgColor

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView == designation_Table {
            return designationArray.count
        }
        else if tableView == department_table {
            return departmentArray.count
        }
        else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView == designation_Table {
            let cell = tableView.dequeueReusableCell(withIdentifier: "designationCell", for: indexPath)
            cell.textLabel?.text = designationArray[indexPath.row]
            return cell
        }
        else if tableView == department_table {
            let cell = tableView.dequeueReusableCell(withIdentifier: "departmentCell", for: indexPath)
            cell.textLabel?.text = departmentArray[indexPath.row]
            return cell
        }
            
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "designationCell", for: indexPath)
            cell.textLabel?.text = designationArray[indexPath.row]
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if tableView == designation_Table {
            let cell = tableView.cellForRow(at: indexPath)
            designation_Btn.setTitle(cell?.textLabel?.text, for: .normal)
            self.designation_Table.isHidden = true
        }
        else if tableView == department_table{
            let cell = tableView.cellForRow(at: indexPath)
            department_Btn.setTitle(cell?.textLabel?.text, for: .normal)
            self.department_table.isHidden = true
        }
        
    }
    
    @IBAction func departmentBtnclicked(_ sender: Any) {
        self.department_table.isHidden = !self.department_table.isHidden

        
    }
    
    @IBAction func designationBtnclicked(_ sender: Any) {
        self.designation_Table.isHidden = !self.designation_Table.isHidden

        
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
