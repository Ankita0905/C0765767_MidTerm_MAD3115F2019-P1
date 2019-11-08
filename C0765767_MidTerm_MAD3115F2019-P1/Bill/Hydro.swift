//
//  Hydro.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-07.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import Foundation
class Hydro : Bill
{
    var agencyName:String
    var unitsConsumed: Float
    var billAmount : Float
    
    init(agencyName:String,unitsConsumed:Float,billAmount : Float,billId : String,billType : Bill.Types,billDate : String)
    {
        self.agencyName=agencyName
        self.unitsConsumed=unitsConsumed
        self.billAmount=billAmount
        super.init(billId: billId, billDate: billDate, billType: billType)
    }
}
