//
//  YakTableViewCell.swift
//  Hack-Yak
//
//  Created by Andrew Breckenridge on 9/13/15.
//  Copyright © 2015 Andrew Breckenridge. All rights reserved.
//

import UIKit

class YakTableViewCell: UITableViewCell {

    var viewModel: Yak! {
        didSet {
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    func setYak(yak: Yak) {
        viewModel = yak
    }

}
