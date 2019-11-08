//
//  CustomerDetailsViewController.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-01.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import UIKit

class CustomerDetailsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    var cutdetails:Customer?=nil
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return cutdetails!.billDictionary.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let x = cutdetails.returnCustObject(custID: Int(indexPath.row+1))
        let Cell=tableView.dequeueReusableCell(withIdentifier: "Mycell",for:indexPath)
        
        return Cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    @IBOutlet weak var lblDetails: UILabel!
    @IBOutlet weak var lbldetails2: UILabel!
    
    @IBOutlet weak var tblBillView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblDetails.text = cutdetails?.fullName
        lbldetails2.text = cutdetails?.customerEmail
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
