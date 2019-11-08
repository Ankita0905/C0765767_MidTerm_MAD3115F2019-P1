//
//  Bill.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-07.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import Foundation
class Bill
{
    var billId : String
    var billDate :  String
    enum Types {
        case Internet
        case Hydro
        case Mobile
    }
    var billType : Types
    var totalBillAmount : Float = 0
    
    init(billId : String , billDate : String, billType : Types) {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
}
}
