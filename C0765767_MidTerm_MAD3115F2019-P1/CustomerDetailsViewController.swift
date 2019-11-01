//
//  CustomerDetailsViewController.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-01.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController {
    var cutdetails:Customer?=nil
    @IBOutlet weak var lblDetails: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDetails.text = cutdetails?.fullName
        // Do any additional setup after loading the view.
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
