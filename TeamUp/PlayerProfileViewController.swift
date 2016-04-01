//
//  PlayerProfileViewController.swift
//  TeamUp
//
//  Created by johan on 29/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class PlayerProfileViewController: UIViewController {

    
    //MARK: - Attributes
    var selectedPlayer:Player?{
        didSet{
            if let selectedPlayer = selectedPlayer{
                let _ = self.view
                configureViews(selectedPlayer)
            }
            
        }
    }
    
    //MARK: - IBOutlets
    @IBOutlet weak var profileImage: UIImageView!
  
    @IBOutlet weak var fNameLbl: UILabel!
    @IBOutlet weak var lNameLbl: UILabel!
    @IBOutlet weak var birthdateLbl: UILabel!
    @IBOutlet weak var positionLbl: UILabel!
    @IBOutlet weak var gamesLbl: UILabel!
    @IBOutlet weak var wpLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var callBtn: UIButton!
    @IBOutlet weak var chatBtn: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    //MARK: - Custom Methods
    func configureViews(player:Player){
        profileImage.image = UIImage (named: "Messi")
        fNameLbl.text = player.fName
        lNameLbl.text = player.lName
        
        let dateFormatter = NSDateFormatter()
        dateFormatter.dateFormat = "dd/MM/yyyy"
        
        let dateString = dateFormatter.stringFromDate(player.birthdate ?? NSDate())
        self.birthdateLbl.text = dateString
        
       
        positionLbl.text = player.position
        gamesLbl.text = player.gamesPlayed?.description
        wpLbl.text = player.barPoints?.description
        phoneLbl.text = player.phone
        
        
    }
    
    
    //MARK: - IBActions
    
    @IBAction func closeView(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
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
