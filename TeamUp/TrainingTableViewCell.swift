//
//  TrainerTableViewCell.swift
//  TeamUp
//
//  Created by johan on 30/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class TrainingTableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var confirmationBtn: UIButton!
    @IBOutlet weak var playersBtn: UIButton!
    
    
    
    
    //MARK: - Override Methods
    
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
        self.dateLbl.text = "22/03/16"
        
    }

}
