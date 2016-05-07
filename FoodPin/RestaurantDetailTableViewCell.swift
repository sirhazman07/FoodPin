//
//  RestaurantDetailTableViewCell.swift
//  FoodPin
//
//  Created by maca on 7/05/2016.
//  Copyright © 2016 Sydney Tafe. All rights reserved.
//

import UIKit

class RestaurantDetailTableViewCell: UITableViewCell {
    @IBOutlet var fieldLabel: UILabel!
    @IBOutlet weak var valueLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
