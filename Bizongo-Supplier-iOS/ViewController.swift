//
//  ViewController.swift
//  Bizongo-Supplier-iOS
//
//  Created by Shashank Sharma on 11/28/15.
//  Copyright © 2015 Shashank Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(animated: Bool) {
        let isUserLoggedIn = NSUserDefaults.standardUserDefaults().boolForKey("isUserLoggedIn")
        
        if !isUserLoggedIn {
            self.performSegueWithIdentifier("loginView", sender: self)
        }
    }
    
    @IBAction func logoutButtonTapped(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setBool(false, forKey: "isUserLoggedIn")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        self.performSegueWithIdentifier("loginView", sender: nil)
    }
}

