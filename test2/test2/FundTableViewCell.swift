//
//  FundTableViewCell.swift
//  test2
//
//  Created by fount on 2016. 1. 15..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class FundTableViewCell: UITableViewCell {
    @IBAction func goFundDetail(sender: UIButton) {
    }
    @IBOutlet weak var FundBalance: UILabel!
    @IBOutlet weak var FundProfit: UILabel!
    @IBOutlet weak var FundTransferState: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
