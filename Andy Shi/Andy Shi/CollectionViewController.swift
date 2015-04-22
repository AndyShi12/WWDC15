//
//  CollectionViewController.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/21/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

let reuseIdentifier = "collCell"

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let titles = ["proj1.rtf", "proj2.rtf", "proj3.rtf", "proj4.rtf", "proj5.rtf"]
    let sectionInsets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    
    @IBAction func backGallery(sender: AnyObject) {
        let home = storyboard?.instantiateViewControllerWithIdentifier("loading") as! ViewController
        self.presentViewController(home, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Register cell classes
      //  self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        //#warning Incomplete method implementation -- Return the number of sections
        return 1
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        //#warning Incomplete method implementation -- Return the number of items in the section
        return titles.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
        cell.title.text = titles[indexPath.row % 5]
        let imgName = "proj1.png"
        cell.pinImage.image = UIImage(named: imgName)
        
        return cell
    }

    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            return CGSize(width: 300, height: 400)
    }
    
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }

}


class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var pinImage: UIImageView!
    
}
