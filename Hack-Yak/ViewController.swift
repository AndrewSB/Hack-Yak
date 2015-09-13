//
//  ViewController.swift
//  Hack-Yak
//
//  Created by Andrew Breckenridge on 9/13/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var yaks: [Yak]! {
        didSet {
            self.tableView.reloadData()
        }
    }

    @IBOutlet weak var tableView: UITableView!
    
    
    @IBAction func unwindToWelcomeScreen(segue: UIStoryboardSegue) {}
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return yaks?.count ?? 0
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("YakCell") as! YakTableViewCell
        
        cell.setYak(yaks![indexPath.row])
        
        return cell
    }


}
