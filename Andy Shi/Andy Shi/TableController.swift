//
//  TableController.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/20/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

class TableController: UITableViewController {
    
    let items = ["project1.png","project2.png","project3.png","project4.png","project5.png","project6.png"]
    let path = ["project1.png","project1.png","project1.png","project1.png","project1.png","project1.png"]
    
    @IBOutlet var projects: UITableView!

    @IBAction func backBtn(sender: AnyObject) {
        let home = storyboard?.instantiateViewControllerWithIdentifier("loading") as! ViewController
        self.presentViewController(home, animated: true, completion: nil)    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.items.count
    }
    
   // override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
         //   let item = self.items[indexPath.row]
      //      let cell = tableView.dequeueReusableCellWithIdentifier("project", forIndexPath: indexPath) as! UITableViewCell
       ////     let image = UIImage(named: item)
        //    cell.imageView!.image = image
        //cell.imageView!.contentMode = .ScaleAspectFill
        //    self.tableView.contentInset = UIEdgeInsetsMake(65, -8, 0, 0);
        //    return cell
    //}
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
        var cell = sender as! UITableViewCell
        let index = tableView?.indexPathForCell(cell)!.row
        println(cell)
        println(index)
        let details = segue.destinationViewController as! ProjectDetailsVC
        println(self.path[index!])
        details.imgPath = self.path[index!]
        }
}

class ProjectDetailsVC: UIViewController {
    var imgPath:String!
    @IBOutlet var projectDetails: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        projectDetails.image = UIImage(named: imgPath)
    }
    
}

