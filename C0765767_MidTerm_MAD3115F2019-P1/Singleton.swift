//
//  Singleton.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-10-31.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import Foundation

class Singleton:NSObject
{
    private var custDict=[Int:Customer]()
    private static var s1=Singleton()
    private override init() {
         
    }
   internal static func getObject()->Singleton{
        return s1
    }
    
    func addCustomer(customer: Customer)
    {
        custDict.updateValue(customer, forKey: customer.customerId!)
    }
    
    func addNewCustomer(FirstName:String,LastName:String,EmailId:String)
    {
        let cust1=custDict.count+1
        let add=Customer(cId: cust1, cFname: FirstName, cLname: LastName, cEmail: EmailId)
        self.addCustomer(customer: add)
    }
    
    func createCustome()
    {
        let c1=Customer(cId: 101, cFname: "Ankita", cLname: "Jain", cEmail: "ankita@123")
        addCustomer(customer: c1)
        let c2=Customer(cId: 102, cFname: "Honey", cLname: "Singh", cEmail: "honey@123")
    }
    
   func display()
      {
          for i in custDict.values
          {
              print(i.fullName)
          }
      }
    
}
