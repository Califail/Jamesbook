//
//  ViewController.swift
//  PhoneBook
//
//  Created by Kim on 03/04/2016.
//  Copyright © 2016 CS Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.setupUI()
    }

    func setupUI()
    {
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    //Datasource Delegation
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let identifer: String = "myCell"
        var cell = tableview.dequeueReusableCellWithIdentifier(identifer)
        if cell == nil {
            cell = UITableViewCell(style: .Subtitle, reuseIdentifier: identifer)
        }
        //Command click the above .Subtitle for other options ie .Default
        
        cell?.textLabel?.text = "Row \(indexPath.row)"
        cell?.detailTextLabel?.text = "\(NSDate())"
        return cell!
    }
}

