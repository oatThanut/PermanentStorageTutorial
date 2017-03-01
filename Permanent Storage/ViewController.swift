//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Thanut's iMac on 3/1/2560 BE.
//  Copyright © 2560 oat_Thanut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        NSUserDefaults.standardUserDefaults().setObject("Oat", forKey: "name")
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String
        print(userName)
        
        let arr = [1, 2, 3, 4]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        let returnArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        for x in returnArray{
            print(x)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

