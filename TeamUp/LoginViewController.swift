//
//  ViewController.swift
//  TeamUp
//
//  Created by johan on 18/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    //MARK: - Attributes
    

    
    //MARK: - IBOutlets
    @IBOutlet weak var usernameLbl: UITextField!
    @IBOutlet weak var passwordLbl: UITextField!
    @IBOutlet weak var loginBtn: UIButton!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let user = TeamAppController.sharedInstance.userLogged
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //MARK: - Custom functions
    func verifyLogin(userName:String, password:String){
        //self.performSegueWithIdentifier()
    }
    
    
    //MARK: - IBActions
   
    

}

