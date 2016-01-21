//
//  AppleLogo.swift
//  test1
//
//  Created by fount on 2016. 1. 14..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class AppleLogo {
    var title:String
    var color:String
    var image:UIImage
    
    init (t:String, c:String, imageName:String) {
        self.title = t
        self.color = c
        
        if let img = UIImage(named: imageName) {
            image = img
        }
        else {
            image = UIImage(named: "default")!
        }
    }

}
