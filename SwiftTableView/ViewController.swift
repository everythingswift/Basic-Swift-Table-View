//
//  ViewController.swift
//  SwiftTableView
//
//  Created by Sridhar Sanapala on 6/1/15.
//  Copyright (c) 2015 everythingswift. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var swiftTable:UITableView!
    let tableItemsArray = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK:
    //MARK: UITableView Data Source Methods
    
    func tableView(tableView: UITableView,
        numberOfRowsInSection section: Int) -> Int
    {
        return tableItemsArray.count
    }
    
    func tableView(tableView: UITableView,
        cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell:UITableViewCell = tableView.dequeueReusableCellWithIdentifier("SwiftTableCell") as! UITableViewCell
        cell.textLabel?.text = tableItemsArray[indexPath.row]
        
        return cell
    }
    
    //MARK:
    //MARK: UITableView Delegate Methods
    
    func tableView(tableView: UITableView,
        didSelectRowAtIndexPath indexPath: NSIndexPath)
    {
        var messageString = "Row \(indexPath.row+1) \(tableItemsArray[indexPath.row]) tapped"
        var alert:UIAlertView = UIAlertView(title: "Swift Table", message: messageString, delegate: self, cancelButtonTitle: "OK")
        alert.show()
    }

}

