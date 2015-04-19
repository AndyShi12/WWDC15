//
//  IntroController.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/18/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

class IntroController: UIViewController {
    
    @IBAction func startButton(sender: AnyObject) {
        let home = storyboard?.instantiateViewControllerWithIdentifier("loading") as! ViewController
        self.presentViewController(home, animated: true, completion: nil)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            }
}