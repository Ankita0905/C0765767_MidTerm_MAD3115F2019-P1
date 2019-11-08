//
//  Mobile.swift
//  C0765767_MidTerm_MAD3115F2019-P1
//
//  Created by Ankita Jain on 2019-11-07.
//  Copyright © 2019 Ankita Jain. All rights reserved.
//

import Foundation
class Mobile : Bill{
 
     var manufacturerName : String
     var planName : String
     var mobileNumber : String
     var internetUsed : Float
     var minutesUsed : Int
     var billAmount : Float

 init(manufacturerName:String,planName:String,mobileNumber:String,internetUsed:Float,minutesUsed:Int,billAmount:Float,billId : String,billType : Types,billDate: String) {
     self.manufacturerName=manufacturerName
     self.planName=planName
     self.mobileNumber=mobileNumber
     self.internetUsed=internetUsed
     self.minutesUsed=minutesUsed
     self.billAmount=billAmount
     super.init(billId: billId, billDate: billDate, billType: billType)
 }
}
