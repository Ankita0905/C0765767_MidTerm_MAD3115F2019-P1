//
//  AddCustomerViewController.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-01.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import UIKit

class AddCustomerViewController: UIViewController {

    @IBOutlet weak var txtLastName: UITextField!
    @IBOutlet weak var txtFirstName: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    
    @IBAction func btnsave(_ sender: UIBarButtonItem) {
        let fName = txtFirstName.text
        let lName = txtLastName.text
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // Code taken from https://stackoverflow.com/questions/25471114/how-to-validate-an-e-mail-address-in-swift
    
    func isValidEmail() -> Bool {
           let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

           let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
           return emailPred.evaluate(with: txtEmail.text!)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
