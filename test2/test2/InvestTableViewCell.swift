//
//  InvestTableViewCell.swift
//  test2
//
//  Created by fount on 2016. 1. 15..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class StockTableViewCell: UITableViewCell {
    @IBAction func goDetail(sender: AnyObject) {
    }
    
    @IBOutlet weak var StockName: UILabel!
    @IBOutlet weak var StockPercent: UILabel!
    @IBOutlet weak var StockBalance: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
