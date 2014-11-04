//
//  AddItemCell.swift
//  OfficeMover500
//
//  Created by Katherine Fang on 10/30/14.
//  Copyright (c) 2014 Firebase. All rights reserved.
//
import UIKit

class PopoverMenuItemCell : UITableViewCell {
    
    var name: String?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        textLabel.font = UIFont(name: "ProximaNova-Light", size: 20)
        textLabel.textColor = UnselectedGrey
    }

    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func setHighlighted(highlighted: Bool, animated: Bool) {
        if highlighted {
            backgroundColor = BorderBlue.colorWithAlphaComponent(0.5)
        } else {
            backgroundColor = UIColor.clearColor()
        }
        
        if let imageName = name {
            let selected = highlighted ? "_selected.png" : "_unselected.png"
            if let image = UIImage(named: "\(imageName)\(selected)") {
                imageView.image = image
            }
        }
    }
}