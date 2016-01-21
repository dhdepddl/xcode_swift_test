//
//  FundListViewController.swift
//  test3
//
//  Created by fount on 2016. 1. 18..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class FundListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var TableView: UITableView!
    
    
    
    let FundList:[Fund] = [Fund(name:"HouseFund", value:10000, profit:2.3, state:"ON"), Fund(name:"EducationFund", value:5000, profit:3.8, state:"OFF")]
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FundList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell: FundTableViewCell = TableView.dequeueReusableCellWithIdentifier("FundTableViewCell", forIndexPath: indexPath) as! FundTableViewCell
        
        let fund = FundList[indexPath.row]
        
        
        cell.FundNameLabel.text = fund.fund_name
        cell.FundValueLabel.text = "$\(fund.fund_value)"
        cell.FundProfitLabel.text = "\(fund.fund_profit)%"
        cell.FundTransferStateLabel.text = "자동이체 "+fund.fund_transfer_state
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        TableView.dataSource = self
        TableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
