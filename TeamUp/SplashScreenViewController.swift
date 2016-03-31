//
//  SplashScreenViewController.swift
//  TeamUp
//
//  Created by johan on 31/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class SplashScreenViewController: UIViewController {

    var firstLaunch = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if TeamAppController.sharedInstance.logUser("username", passwd: "pass"){
            self.performSegueWithIdentifier("alreadyLoggedSegue", sender: self)
        }else{
            self.performSegueWithIdentifier("needLoginSegue", sender: self)
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if !firstLaunch{
            self.performSegueWithIdentifier("needLoginSegue", sender: self)
        }
        firstLaunch = false
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

}
