//
//  FundActivityViewController.swift
//  test3
//
//  Created by fount on 2016. 1. 18..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class FundActivityViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var TableView: UITableView!
    

    lazy var activityLogs:[ActivityLog] = {
        return ActivityLog.showLogs()
    }()

    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return activityLogs.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let activityLog = activityLogs[section]
        return activityLog.ActivityPerMonth.count
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let activityLog = activityLogs[section]
        return activityLog.Month
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:ActivityTableViewCell = TableView.dequeueReusableCellWithIdentifier("ActivityTableViewCell", forIndexPath: indexPath) as! ActivityTableViewCell
        
        let activityLog = activityLogs[indexPath.section]
        let activity = activityLog.ActivityPerMonth[indexPath.row]
        
        
        cell.ActivityName.text = activity.activity_name
        cell.ActivityDate.text = activity.activity_date
        cell.ActivityChange.text = "$\(activity.activity_change)"
        cell.ActivityValue.text = "$\(activity.activity_value)"
        
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.TableView.delegate = self
        self.TableView.dataSource = self
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
