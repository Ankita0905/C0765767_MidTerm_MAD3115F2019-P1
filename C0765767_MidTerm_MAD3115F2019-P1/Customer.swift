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
    var customerId:Int?
    var firstName:String?
    var lastName:String?
    var fullName:String
    {
        return firstName! + " " + lastName!
    }
    var email:String?
    var totalAmount:Float?
}
