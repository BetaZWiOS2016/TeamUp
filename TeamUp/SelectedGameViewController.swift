//
//  SelectedGameViewController.swift
//  TeamUp
//
//  Created by johan on 30/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class SelectedGameViewController: UIViewController {

    //MARK: - Attributes
    var selectedGame:Game?
    
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var dateTimeLbl: UILabel!
    @IBOutlet weak var homeTeamNameLbl: UILabel!
    @IBOutlet weak var awayTeamNameLbl: UILabel!
    @IBOutlet weak var homeTeamImage: UIImageView!
    @IBOutlet weak var awayTeamImage: UIImageView!
    @IBOutlet weak var homeTeamScoreLbl: UILabel!
    @IBOutlet weak var awayTeamScoreLbl: UILabel!
    @IBOutlet weak var aanwezigBtn: UIButton!
    @IBOutlet weak var spelersBtn: UIButton!
    @IBOutlet weak var uurAftrapLbl: UILabel!
    @IBOutlet weak var uurVeldLbl: UILabel!
    @IBOutlet weak var uurWPLbl: UILabel!
    @IBOutlet weak var naamVeldLbl: UILabel!
    @IBOutlet weak var adresVeldLbl: UILabel!
    @IBOutlet weak var naamCafeLbl: UILabel!
    @IBOutlet weak var adresCafeLbl: UILabel!
    
    
    //MARK: - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //MARK: - Custom Methods
    func configureViews(game:Game){
        dateTimeLbl.text = "\(game.matchDay!.description) - \(game.kickOffTime)"
        homeTeamNameLbl.text = game.homeTeam?.name
        awayTeamNameLbl.text = game.awayTeam?.name
        homeTeamImage.image = UIImage(named: game.homeTeam!.image!)
        awayTeamImage.image = UIImage(named: (game.awayTeam?.image)!)
        homeTeamScoreLbl.text = game.homeTeamScore?.description
        awayTeamScoreLbl.text = game.awayTeamScore?.description
        uurAftrapLbl.text = game.kickOffTime
        uurVeldLbl.text = game.pitchTime
        uurWPLbl.text = game.wpTime
        naamVeldLbl.text = game.homeTeam?.pitchName
        adresVeldLbl.text = game.homeTeam?.addressPitch
        naamCafeLbl.text = game.homeTeam?.barName
        adresCafeLbl.text = game.homeTeam?.addressBar
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
