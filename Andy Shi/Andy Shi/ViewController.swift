//
//  ViewController.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/16/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var pageVC: UIPageViewController!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        //let about : UIViewController = storyboard?.instantiateViewControllerWithIdentifier("AboutView") as UIViewController;
        //let project = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as! UIPageViewController
        //var views = ["AboutView", "ProjectView"]
        
        // Do any additional setup after loading the view, typically from a nib.
        self.pageVC = self.storyboard?.instantiateViewControllerWithIdentifier("startPage") as! UIPageViewController
    }
    
    @IBAction func changeView(sender: AnyObject) {
        let vc = storyboard?.instantiateViewControllerWithIdentifier("AboutView") as! UIViewController
        self.presentViewController(vc, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

