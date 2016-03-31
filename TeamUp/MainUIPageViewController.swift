//
//  MainUIPageViewController.swift
//  TeamUp
//
//  Created by johan on 29/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit
import PageMenu

class MainUIPageViewController: UIViewController {

    //MARK: - Attributes
    var pageMenu : CAPSPageMenu?
    
    
    //IBOUtlets
    
    
    
    
    //MARK: - LifeCycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var controllerArray : [UIViewController] = []
        
        TeamAppController.sharedInstance.fillTeams()
        TeamAppController.sharedInstance.fillPlayers()
        TeamAppController.sharedInstance.fillTrainings()
        TeamAppController.sharedInstance.fillGames()
        print("Games")
        print(TeamAppController.sharedInstance.games)
        
    
        // Create variables for all view controllers you want to put in the
        // page menu, initialize them, and add each to the controller array.
        // (Can be any UIViewController subclass)
        // Make sure the title property of all view controllers is set
        // Example:
        let nextGameVC = (storyboard!.instantiateViewControllerWithIdentifier("NextGameViewController")) as! NextGameViewController
        nextGameVC.title = "Volg wedstrijd"
        controllerArray.append(nextGameVC)
        
        let gamesVC  = (storyboard!.instantiateViewControllerWithIdentifier("GamesViewController")) as! GamesViewController
        gamesVC.title = "Kalender"
        controllerArray.append(gamesVC)
        
        let playerVC = (storyboard!.instantiateViewControllerWithIdentifier("PlayerViewController")) as! PlayerViewController
        playerVC.title = "Spelers"
        controllerArray.append(playerVC)
        
        let trainingVC = (storyboard!.instantiateViewControllerWithIdentifier("TrainingViewController")) as! TrainingViewController
        trainingVC.title = "Trainingen"
        controllerArray.append(trainingVC)
        
        let rankingVC = (storyboard!.instantiateViewControllerWithIdentifier("RankingWebViewController")) as! RankingWebViewController
        rankingVC.title = "Rangschikking"
        controllerArray.append(rankingVC)
        
        let homepageVC = (storyboard!.instantiateViewControllerWithIdentifier("HomePageWebViewController")) as! HomePageWebViewController
        homepageVC.title = "Homepage"
        controllerArray.append(homepageVC)
        
        
        // Customize page menu to your liking (optional) or use default settings by sending nil for 'options' in the init
        // Example:
        let parameters: [CAPSPageMenuOption] = [
            .MenuItemSeparatorWidth(1),
            .UseMenuLikeSegmentedControl(false),
            .MenuItemSeparatorPercentageHeight(0.5)
            
            
        ]
        
        // Initialize page menu with controller array, frame, and optional parameters
        pageMenu = CAPSPageMenu(viewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOptions: parameters)
        
        // Lastly add page menu as subview of base view controller view
        // or use pageMenu controller in you view hierachy as desired
        self.view.addSubview(pageMenu!.view)

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

}
