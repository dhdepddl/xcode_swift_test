//
//  PortfolioViewController.swift
//  test2
//
//  Created by fount on 2016. 1. 15..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class PortfolioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var TableView: UITableView!
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //입력
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell: UITableViewCell!
        
        switch(indexPath.section) {
        case 0:
            //입력 cell =
            break;
            
        case 1:
            cell = tableView.dequeueReusableCellWithIdentifier("StockTableViewCell", forIndexPath: indexPath) as! StockTableViewCell
            //수정 let data = datas[indexPath.row]
        
            //cell.FundBalance.text = data.fundbalance
            //cell.FundProfit.text = data.fundprofit
            break;
            
        case 2:
            cell = tableView.dequeueReusableCellWithIdentifier("StockTableViewCell", forIndexPath: indexPath) as! StockTableViewCell
            break;
            
        default:
            break;
        }
        
        return cell
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
