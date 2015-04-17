//
//  ViewController.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/16/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource {

    var pageVC: UIPageViewController!
    var views: NSArray!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageVC = self.storyboard?.instantiateViewControllerWithIdentifier("StartPage") as! UIPageViewController
        self.pageVC.dataSource = self
        
        var currentView = self.getViewAtIndex(0)
        var nextPage = NSArray(object: currentView)
        self.pageVC.setViewControllers(nextPage as [AnyObject], direction: .Forward, animated: true, completion: nil)
        
        //self.pageVC.view.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.size.height - 60)
        self.pageVC.view.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.size.height)
        
        self.addChildViewController(self.pageVC)
        self.view.addSubview(self.pageVC.view)
        self.pageVC.didMoveToParentViewController(self)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // Data Source
    
    func getViewAtIndex(index: Int) -> UIViewController
    {
        // Declare views
        //let about   = storyboard?.instantiateViewControllerWithIdentifier("AboutView") as! UIViewController
        //let project =  as! UIViewController
        views = ["StartView", "AboutView", "ExpView", "ProjectView", "InterestView", "EndView"]
    
        var vc: pages = storyboard?.instantiateViewControllerWithIdentifier(views[index] as! String) as! pages
        vc.pageIndex = index
        println(index)
        //return (views[index] as! UIViewController)
        return vc
    }

    func pageViewController(pageVC: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        var vc = viewController as! pages
        var index = vc.pageIndex as Int

        if(index == 0)
        {
            return nil
        }
        index--
        return self.getViewAtIndex(index)
    }
    
    func pageViewController(pageVC: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        var vc = viewController as! pages
        var index = vc.pageIndex as Int
        
        if (index == NSNotFound || index == views.count - 1)
        {
            return nil
        }
        index++
       /*
        if (index == views.count)
        {
            return nil
        }*/
        return self.getViewAtIndex(index)
    }
    
    
    func presentationCountForPageViewController(pageVC: UIPageViewController) -> Int {
        return self.views.count
    }
    
    func presentationIndexForPageViewController(pageVC: UIPageViewController) -> Int {
        return 0
    }


}

