//
//  ViewController.swift
//
//  Copyright 2011-present Parse Inc. All rights reserved.
//

import UIKit
import Parse
import Foundation


class ViewController: UIViewController {

    @IBOutlet weak var t: UILabel!
    @IBOutlet weak var d: UILabel!
    @IBOutlet weak var m: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
//        var pizza = PFObject(className:"Pizza")
//        
//        pizza["type"] = "Mush+Olive"
//        pizza["size"] = 10
//        pizza["description"] = "Mushroom and Olive brick oven pizza."
//        pizza["topings"] = ["mushroom", "olive"]
//        
//        pizza.saveInBackgroundWithBlock {
//            (success: Bool, error: NSError!) -> Void in
//            if (success) {
//                println(success)
//                // The object has been saved.
//            } else {
//                println(error)
//                // There was a problem, check error.description
//            }
//        }
        
        var dateStrings = "12-01-2014 05:00"
        var dateStringe = "27-04-2015 20:00"
        var dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd-MM-yyyy hh:mm"
        let dateFromStrings = dateFormatter.dateFromString(dateStrings)
        let dateFromStringe = dateFormatter.dateFromString(dateStringe)
        
        
        var mon = PFObject(className: "Calendar")
        mon["Title"] = "Movie2"
        mon["StartDate"] = dateFromStrings
        mon["EndDate"] = dateFromStringe
        mon["AllDay"] = false
        mon["Color"] = "blue"
        mon.saveInBackgroundWithBlock {
            (success: Bool, error: NSError!) -> Void in
            if (success) {
                println(success)
            //                // The object has been saved.
            } else {
                println(error)
            //                // There was a problem, check error.description
                       }
                }
        
        
        
        var query:PFQuery = PFQuery(className:"Calendar");
        //var querydate = "12-01-2014 24:00:00"
        //let queryFromString = dateFormatter.dateFromString(querydate)
        
/*
        
        //query.whereKey("StartDate", equalTo:queryFromString)
        var today = NSData()
        query.whereKey("StartDate", equalTo:dateStrings)
        //query.whereKey()
        query.findObjectsInBackgroundWithBlock {
            (objects: [AnyObject]!, error: NSError!) -> Void in
            if error == nil {
                // The find succeeded.
                println("Successfully retrieved \(objects.count) data.")
                // Do something with the found objects
                if let objects = objects as? [PFObject] {
                     //println("*1")
                    for object in objects {
                        //println("*2")
                        //println(object.objectId)
                     // println(object["d"])
                        println(object["StartDate"])
                     
                        self.m.text = object["Title"].description
                        var nowDate:NSDate = object["StartDate"] as NSDate
                        self.t.text = nowDate.description
                        self.d.text = object["Color"].description
                    
                        
                    }
                }
            } else {
                // Log details of the failure
                println("Error: \(error) \(error.userInfo!)")
            }
        } */


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    }

