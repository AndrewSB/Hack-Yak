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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


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
