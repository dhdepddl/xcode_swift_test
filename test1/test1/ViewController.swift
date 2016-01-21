//
//  ViewController.swift
//  test1
//
//  Created by fount on 2016. 1. 14..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    /*
    @IBOutlet weak var webView1: UIWebView!
    
    @IBAction func goHome(sender: UIButton) {
        let requestURL = NSURL(string:"http://apple.com")
        let request = NSURLRequest(URL: requestURL!)
        webView1!.loadRequest(request)    }
    
    @IBAction func goBack(sender: UIButton) {
        webView1!.goBack()
    }
    @IBAction func goForward(sender: UIButton) {
        webView1!.goForward()
    }
    
    
    
    
    @IBOutlet weak var tableView1: UITableView!
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
    }
    
    override init(nibName nibNameOrNil: String!, bundle nibBundleOrNil: NSBundle!) {
         tableView1 = UITableView()
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    

    
    var datas:[fundData] = [];
    class fundData {
        var fundName: String
        var fundBalance: String
        var fundProfit: String
        
        
        init(n:String, b:String, p:String) {
            fundName = n
            fundBalance = b
            fundProfit = p
        }
        
    }
    
    func laodData() {
        var i:Int = 0
        while i<3 {
            datas.append(fundData(n:"fund\(i)", b: "$\(10000*i)", p:"\(5*i)%"))
            i++
        }
    }
    //Mark: Table
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cellIdentifier = "fundTableViewCell"
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! FundTableViewCell
        let data = datas[indexPath.row]
        
        cell.transferState.text = data.fundName
        cell.subBalance.text = data.fundBalance
        cell.profitPercent.text = data.fundProfit
        
        return cell
    }
    */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //laodData()
        
        //tableView1.delegate = self
        //tableView1.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

