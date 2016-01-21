//
//  fundTableViewCell.swift
//  test1
//
//  Created by fount on 2016. 1. 14..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class FundTableViewCell:UITableViewCell {
    
    @IBOutlet weak var subBalance: UILabel!
    
    @IBOutlet weak var profitPercent: UILabel!
    @IBOutlet weak var transferState: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
