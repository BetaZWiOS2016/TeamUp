//
//  HomePageWebViewController.swift
//  TeamUp
//
//  Created by johan on 29/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class HomePageWebViewController: UIViewController {

    
    //MARK: - IBOutlets
    
    @IBOutlet weak var myWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        let url = NSURL (string: "http://www.kvdv.be");
        let requestObj = NSURLRequest(URL: url!);
        myWebView.loadRequest(requestObj);
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
