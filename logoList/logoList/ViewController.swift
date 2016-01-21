//
//  ViewController.swift
//  logoList
//
//  Created by fount on 2016. 1. 14..
//  Copyright © 2016년 fount. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let logolist = ["blue", "rainbow", "silver"]
    
    @IBOutlet weak var MyTableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return logolist.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let mycell: UITableViewCell = (MyTableView.dequeueReusableCellWithIdentifier("prototype1", forIndexPath: indexPath)as? UITableViewCell)!
        
        mycell.textLabel?.text = logolist[indexPath.row]
        mycell.imageView?.image = UIImage(named: logolist[indexPath.row])
        
        return mycell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        MyTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

