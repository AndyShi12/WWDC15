//
//  CustomPages.swift
//  Andy Shi
//
//  Created by Andy Shi on 4/24/15.
//  Copyright (c) 2015 Andy Shi. All rights reserved.
//

import UIKit
import MapKit

class IntroController: UIViewController {
    @IBAction func startButton(sender: AnyObject) {
        let home = storyboard?.instantiateViewControllerWithIdentifier("loading") as! ViewController
        self.presentViewController(home, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

class pages: UIViewController {
    var pageIndex: Int!
    
    @IBOutlet var progressPro: ProgressBar!
    @IBOutlet var progressMid: ProgressBar!
    @IBOutlet var progressBeg: ProgressBar!
    @IBOutlet weak var map: MKMapView!
    
    @IBAction func projectButton(sender: AnyObject) {
        let projects = storyboard?.instantiateViewControllerWithIdentifier("ProjectsNav") as! UINavigationController
        self.presentViewController(projects, animated: true, completion: nil)
    }
    
    @IBAction func galleryButton(sender: AnyObject) {
        let gallery = storyboard?.instantiateViewControllerWithIdentifier("GalleryView") as! UINavigationController
        self.presentViewController(gallery, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clearColor()
        if (progressPro != nil)
        {
            progressPro.animateProgressView("pro")
            progressMid.animateProgressView("mid")
            progressBeg.animateProgressView("beg")
        }
        
        // Do any additional setup after loading the view.
        if (map != nil) {
            var uk = MKPointAnnotation()
            uk.coordinate = CLLocationCoordinate2DMake(51.507351, -0.127758)
            uk.title = "England"
            uk.subtitle = "London, Oxford, Wiltshire"
            map.addAnnotation(uk)
            
            var italy = MKPointAnnotation()
            italy.coordinate = CLLocationCoordinate2DMake(45.440847, 12.315515)
            italy.title = "Italy"
            italy.subtitle = "Rome, Venice, Florence, Assisi, San Gimignano"
            map.addAnnotation(italy)
            
            var france = MKPointAnnotation()
            france.coordinate = CLLocationCoordinate2DMake(48.856614, 2.352222)
            france.title = "France"
            france.subtitle = "Paris, Nice, Nimes, Avignon"
            map.addAnnotation(france)
            
            var switz = MKPointAnnotation()
            switz.coordinate = CLLocationCoordinate2DMake(47.050038, 8.308929)
            switz.title = "Switzerland"
            switz.subtitle = "Lucerne, Engelberg, Zermatt"
            map.addAnnotation(switz)
            
            var spain = MKPointAnnotation()
            spain.coordinate = CLLocationCoordinate2DMake(40.416775, -3.70379)
            spain.title = "Spain"
            spain.subtitle = "Madrid, Barcelona, Zaragoza"
            map.addAnnotation(spain)
            
            var nether = MKPointAnnotation()
            nether.coordinate = CLLocationCoordinate2DMake(52.370216, 4.895168)
            nether.title = "The Netherlands"
            nether.subtitle = "Amsterdam"
            map.addAnnotation(nether)
            
            var belgium = MKPointAnnotation()
            belgium.coordinate = CLLocationCoordinate2DMake(50.850340, 4.35171)
            belgium.title = "Belgium"
            belgium.subtitle = "Brussel"
            map.addAnnotation(belgium)
            
            var vatican = MKPointAnnotation()
            vatican.coordinate = CLLocationCoordinate2DMake(41.902916, 12.453389)
            vatican.title = "Vatican City"
            map.addAnnotation(vatican)
            
            var monaco = MKPointAnnotation()
            monaco.coordinate = CLLocationCoordinate2DMake(43.739722, 7.427222)
            monaco.title = "Monaco"
            monaco.subtitle = "Monte Carlo"
            map.addAnnotation(monaco)
            
            var germany = MKPointAnnotation()
            germany.coordinate = CLLocationCoordinate2DMake(50.110922, 8.682127)
            germany.title = "Germany"
            germany.subtitle = "Frankfurt, Heidelberg"
            map.addAnnotation(germany)
            
            var montreal = MKPointAnnotation()
            montreal.coordinate = CLLocationCoordinate2DMake(45.501689, -73.567256)
            montreal.title = "Canada"
            montreal.subtitle = "Montreal"
            map.addAnnotation(montreal)
            
            var ny = MKPointAnnotation()
            ny.coordinate = CLLocationCoordinate2DMake(40.712784, -74.005941)
            ny.title = "New York"
            map.addAnnotation(ny)
            
            var ca = MKPointAnnotation()
            ca.coordinate = CLLocationCoordinate2DMake(37.774929, -122.419416)
            ca.title = "California"
            map.addAnnotation(ca)
            
            var il = MKPointAnnotation()
            il.coordinate = CLLocationCoordinate2DMake(41.878114, -87.629798)
            il.title = "Illinois"
            map.addAnnotation(il)
            
            var wi = MKPointAnnotation()
            wi.coordinate = CLLocationCoordinate2DMake(44.883871, -88.633715)
            wi.title = "Wisconsin"
            map.addAnnotation(wi)
            
            var mi = MKPointAnnotation()
            mi.coordinate = CLLocationCoordinate2DMake(42.280826, -83.743038)
            mi.title = "Michigan"
            map.addAnnotation(mi)
            
            var ind = MKPointAnnotation()
            ind.coordinate = CLLocationCoordinate2DMake(39.768403, -86.158068)
            ind.title = "Indiana"
            map.addAnnotation(ind)
            
            var dc = MKPointAnnotation()
            dc.coordinate = CLLocationCoordinate2DMake(38.907192, -77.036871)
            dc.title = "Washington, D.C."
            map.addAnnotation(dc)
            
            var mo = MKPointAnnotation()
            mo.coordinate = CLLocationCoordinate2DMake(38.627003, -90.199404)
            mo.title = "Missouri"
            map.addAnnotation(mo)
            
            var pa = MKPointAnnotation()
            pa.coordinate = CLLocationCoordinate2DMake(39.952584, -75.165222)
            pa.title = "Pennsylvania"
            map.addAnnotation(pa)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


