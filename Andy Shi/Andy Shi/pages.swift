//
//  pages.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/16/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

class pages: UIViewController {

    var pageIndex: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clearColor()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func returnHome(sender: AnyObject) {
        println("in returnHome")
        let home = storyboard?.instantiateViewControllerWithIdentifier("ProjectTable") as! UITableViewController
        self.presentViewController(home, animated: true, completion: nil)
        //storyboard?.instantiateViewControllerWithIdentifier("StartView") as! pages //as! UIViewController
    }
    
    
}
