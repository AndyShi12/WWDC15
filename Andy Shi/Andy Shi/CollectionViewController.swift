//
//  CollectionViewController.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/21/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit

let reuseIdentifier = "pic"

class CollectionViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let titles = ["gallery1.png", "gallery2.png", "gallery3.png", "gallery4.png", "gallery5.png", "gallery6.png", "gallery7.png", "gallery8.png"]
    let sectionInsets = UIEdgeInsets(top: 10.0, left: 10.0, bottom: 10.0, right: 10.0)
    
    @IBAction func backGallery(sender: AnyObject) {
        //let home = storyboard?.instantiateViewControllerWithIdentifier("ProjectView") as! pages
        //self.presentViewController(home, animated: true, completion: nil)
        self.dismissViewControllerAnimated(true, completion: {})
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titles.count
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! CollectionViewCell
        let imgName = titles[indexPath.row % 8]
        cell.title.text = titles[indexPath.row % 8]
        cell.pinImage.image = UIImage(named: imgName)
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            return CGSize(width: 300, height: 300)
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAtIndex section: Int) -> UIEdgeInsets {
            return sectionInsets
    }
}

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var pinImage: UIImageView!
}
