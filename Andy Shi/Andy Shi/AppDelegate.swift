//
//  AppDelegate.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/16/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        var pageControl = UIPageControl.appearance()
        pageControl.pageIndicatorTintColor = UIColor.lightGrayColor()
        pageControl.currentPageIndicatorTintColor = UIColor.whiteColor()
        pageControl.backgroundColor = UIColor.clearColor()
        application.statusBarHidden = true
        
        self.window!.tintColor = UIColor.whiteColor()
        let font = UIFont(name: "Avenir", size: 20.0)
        
        UINavigationBar.appearance().barTintColor = UIColor(red: 51/255.0, green: 153/255.0, blue: 204/255.0, alpha: 1.0)
        
        UINavigationBar.appearance().titleTextAttributes = [ NSForegroundColorAttributeName : UIColor.whiteColor(), NSFontAttributeName: font! ]
    
        return true
    }
}

