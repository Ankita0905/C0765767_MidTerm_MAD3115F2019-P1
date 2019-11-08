//
//  Singleton.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-10-31.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

//understood from Kuldeep


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
            
            //cust 1
            let i1=Internet(providerName: "Bell", gbUsed: 23.9, billId: "I1", billDate: "01/01/2019", billAmount: 100.9, billType:Bill.Types.Internet)
            let h1=Hydro(agencyName: "Brampton Energy", unitsConsumed: 22.2, billAmount: 101.21, billId: "H1", billType: Bill.Types.Hydro, billDate: "01/02/2019")
            let m1=Mobile(manufacturerName: "Apple", planName: "Big Data", mobileNumber: "67854334", internetUsed: 10.2, minutesUsed: 500, billAmount: 90.56, billId: "M1", billType: Bill.Types.Mobile, billDate: "01/03/2019")
         let c1 = Customer(customerID: 1, customerFName: "Ankita", customerLName: "Jain", customerEmail: "ankita@gmail.com ")
             AddCustomer(customer: c1)
             let c2 = Customer(customerID: 2, customerFName: "kamal", customerLName: "kaur", customerEmail: "kamal@gmail.com ")
             AddCustomer(customer: c2)
             let c3 = Customer(customerID: 3, customerFName: "Karan", customerLName: "Kumar", customerEmail: "karan321@gmail.com ")
             AddCustomer(customer: c3)
             //cust 4 with bill
             
             
             let c4 = Customer(customerID: 4, customerFName: "Sandeep", customerLName: "Singh", customerEmail: "sandeep@gmail.com ")
             AddCustomer(customer: c4)
             
            c1.addBill(Bill: i1)
            c1.addBill(Bill: h1)
            c1.addBill(Bill: m1)
         }
         
         

         
         func AddCustomer(customer: Customer)
         {
             customerDictionary.updateValue(customer, forKey: customer.customerID!)
         }
         
         func AddBill(bill:Customer)
         {
             
         }
         func printdata()
         {
             for i in customerDictionary.values
             {
                 print(i.customerFName!)
             }
         }
         

     }
