//
//  fundTableViewCell.swift
//  test1
//
//  Created by fount on 2016. 1. 14..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class Fund {
    var fund_name:String
    var fund_value:Double
    var fund_profit:Double
    var fund_transfer_state:String

    
    init(name:String, value:Double, profit:Double, state:String){
        fund_name = name
        fund_value = value
        fund_profit = profit
        fund_transfer_state = state
    }
}
