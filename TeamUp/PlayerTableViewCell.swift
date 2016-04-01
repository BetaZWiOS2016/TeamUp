//
//  PlayerTableViewCell.swift
//  TeamUp
//
//  Created by johan on 30/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {

    
    //MARK: - Attributes
    var selectedPlayer:Player?
    
    //MARK: - IBOutlets
    
    @IBOutlet weak var profilePic: UIImageView!
    @IBOutlet weak var lNameLbl: UILabel!
    @IBOutlet weak var fNameLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    
    //MARK: - Custom Methods
    func configureCell(player:Player){
        self.selectedPlayer = player
        self.lNameLbl.text = player.lName
        self.fNameLbl.text = player.fName
    }
}
