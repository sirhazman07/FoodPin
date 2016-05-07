//
//  Restaurant Detail View ControllerViewController.swift
//  FoodPin
//
//  Created by yabloko on 4/05/2016.
//  Copyright © 2016 Sydney Tafe. All rights reserved.
//

import UIKit

class RestaurantDetailViewController: UIViewController, UITableViewDelegate , UITableViewDataSource  {

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet weak var tableView: UITableView!
    
    var restaurant : Restaurant!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        imageView.image = UIImage(named: restaurant.image)
    
        //TableView Customisation
        tableView.backgroundColor = UIColor(colorLiteralRed: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        //Create a footer - gets rid of the extra separators under set fields
        tableView.tableFooterView = UIView(frame: CGRectZero)
        tableView.separatorColor = UIColor(colorLiteralRed: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.8)
        // TableView Est Row Height
        tableView.estimatedRowHeight = 36.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        
        //Every ViewController has an attribute property that we can set manually
        title = restaurant.name
        
        navigationController?.hidesBarsOnSwipe = true
        
        
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = false
        navigationController?.setNavigationBarHidden(false, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK : - Tableview
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as! RestaurantDetailTableViewCell
        //Configure the Cell.....
        switch indexPath.row {
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = restaurant.name
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = restaurant.type
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = restaurant.location
        case 3:
            cell.fieldLabel.text = "Phone Number"
            cell.valueLabel.text = restaurant.phoneNumber
        case 4:
            cell.fieldLabel.text = "Been here"
            cell.valueLabel.text = (restaurant.isVisited) ? "Yes, I've been here" : "No"
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
            
        }
        
        cell.backgroundColor = UIColor.clearColor()
        
        return cell
        
        
    }

    // Unwind Segue Exit Method
    @IBAction func close(segue: UIStoryboardSegue) {
        
//        if let reviewViewController = segue.sourceViewController as? ReviewViewController {
//            if let rating = reviewViewController.rating {
//                ratingButton.setImage(UIImage(named: rating), forState: .Normal)
//            }
//        }
        
    }
    
    
    

}
