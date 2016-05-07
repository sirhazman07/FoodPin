//
//  RestaurantTableViewCell.swift
//  FoodPin
//
//  Created by yabloko on 30/04/2016.
//  Copyright © 2016 Sydney Tafe. All rights reserved.
//

import UIKit

class RestaurantTableViewCell: UITableViewCell {
    
    @IBOutlet var thumbnailImageView : UIImageView!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var phoneNumber: UILabel!
    @IBOutlet var typeLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
