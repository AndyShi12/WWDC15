//
//  TableController.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/20/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

class TableController: UITableViewController {
    
    @IBOutlet var projectView: UITableView!
    let projects = [
        0:"http://andyshi.com/raygun-high-tech-assassin-on-your-iphone-you-bet/",
        1:"http://andyshi.com/otto-personal-assistant/",
        2:"http://andyshi.com/social-mint-social-stock-investment/",
        3:"http://andyshi.com/allison-kegley-designs/",
        4:"http://andyshi.com/infinity-mirror-pyramid/",
        5:"http://andyshi.com/proposal.pdf"]
    
    let alert = UIAlertController(title: "Projects", message: "Details will be loaded from the web", preferredStyle: .Alert)
    let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in }
    
    @IBAction func backBtn(sender: AnyObject) {
        let home = storyboard?.instantiateViewControllerWithIdentifier("loading") as! ViewController
        self.presentViewController(home, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        alert.view.tintColor = UIColor(red: 51/255.0, green: 153/255.0, blue: 204/255.0, alpha: 1.0)
        alert.addAction(OKAction)
        self.presentViewController(alert, animated: true, completion: nil)
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.projects.count
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var cell = sender as! UITableViewCell
        let index = tableView?.indexPathForCell(cell)!.row
        let details = segue.destinationViewController as! ProjectDetailsVC
        let html = index!
        details.webPath = projects[html]
    }
}

class ProjectDetailsVC: UIViewController, UIWebViewDelegate {
    var webPath:String!
    @IBOutlet var browser: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var url = NSURL (string: webPath)
        var requestObj = NSURLRequest(URL: url!)
        browser.loadRequest(requestObj)
    }
}

