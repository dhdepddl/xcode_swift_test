//
//  Activity.swift
//  test3
//
//  Created by fount on 2016. 1. 18..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit
import Foundation

class Activity {
    var activity_name:String
    var activity_date:String //UIDataPicker, UIPickerView
    var activity_change:Double
    var activity_value:Double

    init(name:String, date:String, change:Double, value:Double){
        activity_name = name
        activity_date = date
        activity_change = change
        activity_value = value
    }
}
