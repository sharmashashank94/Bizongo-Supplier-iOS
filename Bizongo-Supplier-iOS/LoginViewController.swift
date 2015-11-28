//
//  LoginViewController.swift
//  Bizongo-Supplier-iOS
//
//  Created by Shashank Sharma on 11/28/15.
//  Copyright © 2015 Shashank Sharma. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var userEmailTextField: UITextField!
    
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func loginButtonTapped(sender: AnyObject) {
        let email = userEmailTextField.text
        let password = userPasswordTextField.text
        
        let emailStored = "shashank@bizongo.in"
        let passwordStored = "shashank!"
        
        if email == emailStored && passwordStored == password {
            //Login is successful
            NSUserDefaults.standardUserDefaults().setBool(true, forKey: "isUserLoggedIn")
            NSUserDefaults.standardUserDefaults().synchronize()
            self.dismissViewControllerAnimated(true, completion: nil)
        }
        else {
            
        }
    }
}
