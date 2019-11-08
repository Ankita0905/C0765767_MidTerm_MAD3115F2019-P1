//
//  Bill.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-07.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import Foundation
enum billTypes: String {
    case Mobile = "Mobile"
    case Internet = "Internet"
    case Hydro = "Hydro"
}

class Bill
{
    var Id: Int
    var billDate: Date
    var billType: billTypes
    var totalBillAmount: Float
    
    init()
    {
        self.Id = Int()
        self.billDate = Date()
        self.billType = billTypes.Mobile
        self.totalBillAmount = Float()
    }
    
    init(Id: Int, billDate: Date, billType: billTypes, totalBillAmount: Float)
    {
        self.Id = Id
        self.billDate = billDate
        self.billType = billType
        self.totalBillAmount = totalBillAmount
    }
}
