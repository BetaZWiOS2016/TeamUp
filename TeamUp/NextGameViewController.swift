//
//  NextGameViewController.swift
//  TeamUp
//
//  Created by johan on 29/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class NextGameViewController: UIViewController {

    //MARK: - IBOutlets
    
    @IBOutlet weak var homeTeamNameLbl: UILabel!
    @IBOutlet weak var dateTimeLbl: UILabel!
    @IBOutlet weak var awayTeamNameLbl: UILabel!
    @IBOutlet weak var homeTeamImage: UIImageView!
    @IBOutlet weak var awayTeamImage: UIImageView!
    @IBOutlet weak var aanwezigBtn: UIButton!
    @IBOutlet weak var spelersBtn: UIButton!
    @IBOutlet weak var uurAftrapLbl: UILabel!
    @IBOutlet weak var uurVeldLbl: UILabel!
    @IBOutlet weak var uurWPLbl: UILabel!
    @IBOutlet weak var veldNaamLbl: UILabel!
    @IBOutlet weak var adresVeldLbl: UILabel!
    @IBOutlet weak var cafeNaamLbl: UILabel!
    @IBOutlet weak var adresCafeLbl: UILabel!
    @IBOutlet weak var homeTeamScoreLbl: UILabel!
    @IBOutlet weak var awayTeamScoreLbl: UILabel!
    
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
        setCurrentGame()
        configureViews(TeamAppController.sharedInstance.nextGame)
        

        NSNotificationCenter.defaultCenter().addObserver(self, selector: Selector("gamesHasBeenFetched:"), name: TeamAppController.gamesFilledNotification, object: nil)
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        print("VIEW WILL APPEAR")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func gamesHasBeenFetched(notification: NSNotification){
        setCurrentGame()
        configureViews(TeamAppController.sharedInstance.nextGame)
    }
    
    //MARK: - Custom Methods
    func setCurrentGame(){
        let today = NSDate()
        var date = NSDate(timeIntervalSinceNow: +300*24*60*60)
        print("In NextGameVC")
        print(TeamAppController.sharedInstance.games)
        for (_, game) in TeamAppController.sharedInstance.games{
            
            if game.matchDay == nil ? true : game.matchDay!.isLessThanDate(today) {
                print("")
            }
            else if(game.matchDay == nil ? true : game.matchDay!.isLessThanDate(date)){
                TeamAppController.sharedInstance.nextGame = game;
                date = game.matchDay!
            }
        }
        
    }
    
    
    func configureViews(currentGame:Game){
        homeTeamNameLbl.text = currentGame.homeTeam?.name
        awayTeamNameLbl.text = currentGame.awayTeam?.name
        print("MATCHDAY")
        print(currentGame.matchDay)
        //current format : 2016-04-02 11:19:12 +0000
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let dateString = dateFormatter.stringFromDate(currentGame.matchDay ?? NSDate())
        dateTimeLbl.text = dateString
        uurAftrapLbl.text = currentGame.homeTeam?.kickOffTime
        uurVeldLbl.text = currentGame.pitchTime
        uurWPLbl.text = currentGame.wpTime
        veldNaamLbl.text = currentGame.homeTeam?.pitchName
        adresVeldLbl.text = currentGame.homeTeam?.addressPitch
        cafeNaamLbl.text = currentGame.homeTeam?.barName
        adresCafeLbl.text = currentGame.homeTeam?.addressBar
        if(currentGame.homeTeamScore==99){
            
        }
        else{
            homeTeamScoreLbl.text = currentGame.homeTeamScore?.description
            awayTeamScoreLbl.text = currentGame.awayTeamScore?.description
        }
        
        if(currentGame.homeTeam?.name == "Kliefhamers"){
            homeTeamImage.image = UIImage(named: "KliefhamersLogo")
            awayTeamImage.image = UIImage(named: "AwayTeamLogo")
        }
        else{
            homeTeamImage.image = UIImage(named: "AwayTeamLogo")
            awayTeamImage.image = UIImage(named: "KliefhamersLogo")
        }
    
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
