//
//  ActivityLogMonth.swift
//  test3
//
//  Created by fount on 2016. 1. 19..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit
import Foundation

class ActivityLog {
    
    var Month:String
    var ActivityPerMonth:[Activity]
    
    init(month:String, includelogs:[Activity]) {
        Month = month
        ActivityPerMonth = includelogs
    }
    
    class func showLogs()->[ActivityLog] {
        return [self.september(), self.octobor()]
    }
    
    private class func september()->ActivityLog {
        var ActivityPerMonth = [Activity]()
        ActivityPerMonth.append(Activity(name:"Market Changes", date:"2015-09-02", change:30000, value:1000000))
        ActivityPerMonth.append(Activity(name:"Initial Deposit", date:"2015-09-18", change:200000, value:2000000))
        
        return ActivityLog(month:"2015-09", includelogs: ActivityPerMonth)
    }
    
    private class func octobor()->ActivityLog {
        var ActivityPerMonth = [Activity]()
        ActivityPerMonth.append(Activity(name:"Riskfactor Change", date:"2015-10-13", change:30000, value:1000000))
        ActivityPerMonth.append(Activity(name:"Initial Deposit", date:"2015-10-21", change:200000, value:2000000))
        
        return ActivityLog(month:"2015-10", includelogs: ActivityPerMonth)
    }
}
