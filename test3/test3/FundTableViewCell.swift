//
//  FundTableViewCell.swift
//  test3
//
//  Created by fount on 2016. 1. 18..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class FundTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var GoFundDetail: UIButton!
    
    @IBOutlet weak var FundNameLabel: UILabel!
    @IBOutlet weak var GoFund: UILabel!
    @IBOutlet weak var FundValueLabel: UILabel!
    @IBOutlet weak var FundProfitLabel: UILabel!
    @IBOutlet weak var FundTransferStateLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
