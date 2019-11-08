//
//  Customer.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-01.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import Foundation

class Customer
{
    var customerID : Int?
    var customerFName: String?
    var customerLName : String?
    var fullName : String{
        return customerFName! + " " + customerLName!
    }
      var customerEmail: String?
    
    var totalBillAmount : Float?
    //var billDictionary = Dictionary<String,Bill>()
//    internal var bills = [Bill]()
//
//    var getBills: [Bill] {
//        get {
//            return bills
//        }
//    }
    var billDictionary=[String:Bill]()
    
    init(customerID:Int,customerFName: String,customerLName:String,customerEmail:String) {
        self.customerID=customerID
        self.customerFName=customerFName
        self.customerLName=customerLName
        self.customerEmail=customerEmail
        
    }
    
    func addBill(Bill:Bill)
    {
        billDictionary.updateValue(Bill, forKey:Bill.billId)
    }
    
    func returnBillArray() -> Array<Bill>
    {
        var temp : Array<Bill> = []
        for i in billDictionary.values
        {
            temp.append(i)
        }
        return temp
    }
    
//    init(customerID:Int,customerFName: String,customerLName:String,customerEmail:String,bills: [Bill]? = nil) {
//        self.customerID=customerID
//        self.customerFName=customerFName
//        self.customerLName=customerLName
//        self.customerEmail=customerEmail
//        if let bill = bills {
//           self.bills = bill
//        }
    }

