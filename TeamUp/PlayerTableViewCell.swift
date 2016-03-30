//
//  PlayerTableViewCell.swift
//  TeamUp
//
//  Created by johan on 30/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class PlayerTableViewCell: UITableViewCell {

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
    func configureCell(){
        self.profilePic.image = UIImage (named: "ThumbnailLogo")
        self.lNameLbl.text = "Van Gestel"
        self.fNameLbl.text = "Jens"
    }
}
