//
//  Internet.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-07.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import Foundation
class Internet : Bill
{
        var providerName : String
        var gbUsed : Float
        var billAmount : Float
    
    init(providerName : String, gbUsed : Float, billId : String, billDate : String,billAmount: Float, billType : Bill.Types)
    {
        self.providerName = providerName
        self.gbUsed = gbUsed
        self.billAmount = billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
}
