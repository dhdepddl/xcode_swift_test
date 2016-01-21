//
//  ActivityTableViewCell.swift
//  test3
//
//  Created by fount on 2016. 1. 19..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class ActivityTableViewCell: UITableViewCell {
    @IBOutlet weak var GoDetail: UIButton!
    
    @IBOutlet weak var ActivityName: UILabel!
    @IBOutlet weak var ActivityDate: UILabel!
    @IBOutlet weak var ActivityValue: UILabel!
    @IBOutlet weak var ActivityChange: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
