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
    
    
}
