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
        
        let currentView = self.getViewAtIndex(0)
        let nextPage = NSArray(object: currentView)
        self.pageVC.setViewControllers((nextPage as! [UIViewController]), direction: UIPageViewControllerNavigationDirection.Forward, animated: true, completion: nil)
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
        views = ["StartView", "AboutView", "ExpView", "ProjectView", "InterestView", "EndView"]
        let view: pages = storyboard?.instantiateViewControllerWithIdentifier(views[index] as! String) as! pages
        view.pageIndex = index
        return view
    }

    func pageViewController(pageVC: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
    {
        let view = viewController as! pages
        var index = view.pageIndex as Int
        if(index == 0)
        {
            return nil
        }
        index--
        return self.getViewAtIndex(index)
    }
    
    func pageViewController(pageVC: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
    {
        let view = viewController as! pages
        var index = view.pageIndex as Int
        
        if (index == NSNotFound || index == views.count - 1)
        {
            return nil
        }
        index++
        return self.getViewAtIndex(index)
    }
    
    func presentationCountForPageViewController(pageVC: UIPageViewController) -> Int {
        return self.views.count
    }
    
    func presentationIndexForPageViewController(pageVC: UIPageViewController) -> Int {
        return 0
    }
}


