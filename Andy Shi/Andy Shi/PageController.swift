//
//  PageController.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/18/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit
import MapKit

class PageController: UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageView = UIImageView(frame: view.bounds)
        //imageView.contentMode = .ScaleAspectFit
        imageView.contentMode = .ScaleAspectFill
        imageView.image = UIImage(named: "tour-overlay-img")
        view.addSubview(imageView)
        view.sendSubviewToBack(imageView)
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        var bkgViews: NSArray = view.subviews
        var scrollView: UIScrollView? = nil
        var dots: UIPageControl? = nil
        
        for view in bkgViews {
            if view.isKindOfClass(UIScrollView) {
                scrollView = view as? UIScrollView
            }
            else if view.isKindOfClass(UIPageControl) {
                dots = view as? UIPageControl
            }
        }
        
        if (scrollView != nil && dots != nil) {
            scrollView?.frame = view.bounds
            view.bringSubviewToFront(dots!)
        }
    }
}