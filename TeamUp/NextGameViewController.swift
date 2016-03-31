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
        setCurrentGame()
        configureViews(TeamAppController.sharedInstance.nextGame)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: - Custom Methods
    func setCurrentGame(){
        let today = NSDate()
        var date = NSDate(timeIntervalSinceNow: -300*24*60*60)
        for (_, game) in TeamAppController.sharedInstance.games{
        
            if game.matchDay == nil ? true : game.matchDay!.isGreaterThanDate(today) {
                print("")
            }
            else if(game.matchDay == nil ? true : game.matchDay!.isGreaterThanDate(date)){
                TeamAppController.sharedInstance.nextGame = game;
                date = game.matchDay!
            }
        }
        //print ("NextGame = ")
        //print((TeamAppController.sharedInstance.nextGame.homeTeam?.name)!)
    }
    
    
    func configureViews(currentGame:Game){
        homeTeamNameLbl.text = currentGame.homeTeam?.name
        awayTeamNameLbl.text = currentGame.awayTeam?.name
        dateTimeLbl.text = currentGame.matchDay?.description
        uurAftrapLbl.text = currentGame.homeTeam?.kickOffTime
        uurVeldLbl.text = currentGame.pitchTime
        uurWPLbl.text = currentGame.wpTime
        veldNaamLbl.text = currentGame.homeTeam?.pitchName
        adresVeldLbl.text = currentGame.homeTeam?.addressPitch
        cafeNaamLbl.text = currentGame.homeTeam?.barName
        adresCafeLbl.text = currentGame.homeTeam?.addressBar
        homeTeamScoreLbl.text = currentGame.homeTeamScore?.description
        awayTeamScoreLbl.text = currentGame.awayTeamScore?.description
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
