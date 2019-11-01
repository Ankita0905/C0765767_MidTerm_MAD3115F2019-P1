//
//  Singleton.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-10-31.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import Foundation

class Singleton: NSObject
{
     private var customerDictionary  = [Int:Customer]()
    
    private static var obj = Singleton()
    
    
    private override init() {
        
    }
    
    internal static func getInstance() -> Singleton
    {
        return obj
    }
    
    func addNewCustomer(First_Name : String, Last_Name : String, email : String)
    {
        let c = customerDictionary.count + 1
        //let c1 = "c" + String(customerDictionary.count)
        let temp = Customer(customerID: c, customerFName: First_Name, customerLName: Last_Name, customerEmail: email)
        self.AddCustomer(customer: temp)
    }
    
    func returnCustObject(custID : Int) -> Customer?
    {
        for (k,v) in customerDictionary
        {
            if custID == k
            {
                return v
            }
        }
        return nil
        
    }
    
    func returnCount() -> Int
    {
        return customerDictionary.count
    }
    
    func createCust()
    {
    let customer1 = Customer(customerID: 1, customerFName: "Ankita", customerLName: "Jain", customerEmail: "ankita@gmail.com ")
        AddCustomer(customer: customer1)
        let customer2 = Customer(customerID: 2, customerFName: "kamal", customerLName: "kaur", customerEmail: "kamal@gmail.com ")
        AddCustomer(customer: customer2)
        let customer3 = Customer(customerID: 3, customerFName: "Karan", customerLName: "Kumar", customerEmail: "karan321@gmail.com ")
        AddCustomer(customer: customer3)
        let customer4 = Customer(customerID: 4, customerFName: "Sandeep", customerLName: "Singh", customerEmail: "sandeep@gmail.com ")
        AddCustomer(customer: customer4)
       
    }
    
    

    
    func AddCustomer(customer: Customer)
    {
        customerDictionary.updateValue(customer, forKey: customer.customerID!)
    }
    func printdata()
    {
        for i in customerDictionary.values
        {
            print(i.customerFName!)
        }
    }
}
