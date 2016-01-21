//
//  MainViewController.swift
//  test2
//
//  Created by fount on 2016. 1. 15..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    @IBOutlet weak var MainTableView: UITableView!
    
    //data for section1
    var datas:[Data] = []
    
    class Data {
        var fundbalance:String
        var fundprofit:String
    
        init(balance:String, profit:String){
            fundbalance = balance
            fundprofit = profit
        }
    }
    
    func loadData(){
        var i = 1
        while i < 5 {
            datas.append(Data(balance:"$\(i*1000)",profit:"S\(i)%"))
            i++
        }
    }
    //section1 data
    

    
    
    
    //function
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("FundTableViewCell", forIndexPath: indexPath) as! FundTableViewCell
        let data = datas[indexPath.row]
    
        cell.FundBalance.text = data.fundbalance
        cell.FundProfit.text = data.fundprofit
        
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        MainTableView.delegate = self
        MainTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
