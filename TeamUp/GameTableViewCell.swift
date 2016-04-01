//
//  GameTableViewCell.swift
//  TeamUp
//
//  Created by johan on 30/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var homeTeamImage: UIImageView!
    @IBOutlet weak var homeTeamLbl: UILabel!
    @IBOutlet weak var homeTeamScoreLbl: UILabel!
    @IBOutlet weak var awayTeamScoreLbl: UILabel!
    @IBOutlet weak var awayTeamLbl: UILabel!
    @IBOutlet weak var awayTeamImage: UIImageView!
    
    
    //Mark: - Override methods
    
    var currentGame: Game?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    //MARK: - Custom Methods
    func configureCell(game:Game){
        self.currentGame = game
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let dateString = dateFormatter.stringFromDate(game.matchDay ?? NSDate())
        self.dateLbl.text = dateString

        self.homeTeamLbl.text = game.homeTeam?.name
        self.awayTeamLbl.text = game.awayTeam?.name
        if(game.homeTeamScore==99){
            
        }
        else{
            homeTeamScoreLbl.text = game.homeTeamScore?.description
            awayTeamScoreLbl.text = game.awayTeamScore?.description
        }
        
        if(game.homeTeam?.name == "Kliefhamers"){
            homeTeamImage.image = UIImage(named: "KliefhamersLogo")
            awayTeamImage.image = UIImage(named: "AwayTeamLogo")
        }
        else{
            homeTeamImage.image = UIImage(named: "AwayTeamLogo")
            awayTeamImage.image = UIImage(named: "KliefhamersLogo")
        }
        
    
        
    }

}
