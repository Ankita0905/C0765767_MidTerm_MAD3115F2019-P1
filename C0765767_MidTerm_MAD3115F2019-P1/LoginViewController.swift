//
//  ViewController.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-10-31.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUser: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var lblVersion: UILabel!
    @IBOutlet weak var btnLogin: UIButton!
    
    @IBAction func btnLogin(_ sender: UIButton) {
        let sb=UIStoryboard(name: "Main", bundle: nil)
        let customerListVC=sb.instantiateViewController(identifier: "customerListVC") as! CustomerListViewController
        navigationController?.pushViewController(customerListVC, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       showVersion()
    }
    
    func showVersion()
 {
    if let version = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString"), let versionCode = Bundle.main.object(forInfoDictionaryKey: "CFBundleVersion")  {
        
        lblVersion.text = "Version \(version) (\(versionCode))"
    }
    

    }

}

