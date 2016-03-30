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
    func configureCell(){
        self.dateLbl.text = "23/04/16 - 14u30"
        self.homeTeamLbl.text = "FC Kliefhamers"
        self.awayTeamLbl.text = "FC Konijnenberg"
        self.homeTeamScoreLbl.text = "2"
        self.awayTeamScoreLbl.text = "0"
        self.homeTeamImage.image = UIImage(named: "ThumbnailLogo")
        self.awayTeamImage.image = UIImage(named: "AwayTeamLogo")
        
    }

}
