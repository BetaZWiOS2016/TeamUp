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
        self.dateLbl.text = game.matchDay?.description
        self.homeTeamLbl.text = game.homeTeam?.name
        self.awayTeamLbl.text = game.awayTeam?.name
        self.homeTeamScoreLbl.text = game.homeTeamScore?.description
        self.awayTeamScoreLbl.text = game.awayTeamScore?.description
        self.homeTeamImage.image = UIImage(named: (game.homeTeam?.image)!)
        self.awayTeamImage.image = UIImage(named: (game.awayTeam?.image)!)
        
    }

}
