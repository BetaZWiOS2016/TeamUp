//
//  GamesViewController.swift
//  TeamUp
//
//  Created by johan on 29/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class GamesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    
    //MARK: - Attributes
    var arr = [Game]()
    
    //MARK: - IBOutlets
    
  
    @IBOutlet weak var tableView: UITableView!

    
    //MARK : - LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
       
        
        for (_, value) in TeamAppController.sharedInstance.games {
            arr.append(value)
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK : - TableView
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("GameCell")! as! GameTableViewCell
        
        cell.configureCell(arr[indexPath.row])
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    

    
  
    // MARK: - Navigation

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "showGameSegue"){
                let selectedGameVC = segue.destinationViewController as! SelectedGameViewController
                if let gameCell = sender as? GameTableViewCell{
                    selectedGameVC.selectedGame = gameCell.currentGame
                }
        }
    }


}
