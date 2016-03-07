//
//  SampleTableViewCell.swift
//  tableviewexample
//
//  Created by ashok.londhe on 07/03/16.
//  Copyright © 2016 ashok.londhe. All rights reserved.
//

import UIKit

class SampleTableViewCell: UITableViewCell {

    weak var profileImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        profileImageView.layer.cornerRadius = self.profileImageView.frame.width/2;
        profileImageView.layer.borderWidth = 1.0
        profileImageView.layer.borderColor = UIColor.grayColor().CGColor
        
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
