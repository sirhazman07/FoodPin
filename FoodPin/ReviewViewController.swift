//
//  ReviewViewController.swift
//  FoodPin
//
//  Created by maca on 7/05/2016.
//  Copyright © 2016 Sydney Tafe. All rights reserved.
//

import UIKit

class ReviewViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var ratingStackView: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // BG Image Blur
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
        //blowup animation
//        // Transform StackView 0x0
//        ratingStackView.transform = CGAffineTransformMakeScale(0.0, 0.0)
//       //SLide up from bottom animation
//        // Transform StackView 0x500
//        ratingStackView.transform = CGAffineTransformMakeTranslation(0, 500)
//        
        //Both together using let and TransformConcat
        // Transform StackView Combine
        let scale = CGAffineTransformMakeScale(0.0, 0.0)
        let translate = CGAffineTransformMakeTranslation(0, 500)
        ratingStackView.transform = CGAffineTransformConcat(scale, translate)
        
        
    }
    
    
    // Animate StackView
    override func viewDidAppear(animated: Bool) {
        
//        UIView.animateWithDuration(0.7, delay: 0.0, options: [], animations: {
//            self.ratingStackView.transform = CGAffineTransformIdentity
//            }, completion: nil)
        
        // Spring Animation
        UIView.animateWithDuration(0.5, delay: 0.0, usingSpringWithDamping: 0.3, initialSpringVelocity: 0.5, options: [], animations: {
            self.ratingStackView.transform = CGAffineTransformIdentity
            }, completion: nil)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
