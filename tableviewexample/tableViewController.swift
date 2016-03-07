//
//  tableViewController.swift
//  tableviewexample
//
//  Created by ashok.londhe on 03/03/16.
//  Copyright © 2016 ashok.londhe. All rights reserved.
//

import UIKit

class tableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        self.tableView.registerNib(UINib(nibName: "SampleTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell") as! SampleTableViewCell!
        if cell == nil {
            //tableView.registerNib(UINib(nibName: "UICustomTableViewCell", bundle: nil), forCellReuseIdentifier: "UICustomTableViewCell")
            tableView.registerClass(SampleTableViewCell.classForCoder(), forCellReuseIdentifier: "Cell")
            
           
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
      self.navigationController!.popViewControllerAnimated(true)
        
    }
    
    func tableView(tableView: UITableView, estimatedHeightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
       return UITableViewAutomaticDimension
    }
    
//    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
//        return 45
//    }
    
}