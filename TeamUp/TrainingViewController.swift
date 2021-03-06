//
//  TrainingViewController.swift
//  TeamUp
//
//  Created by johan on 29/03/16.
//  Copyright © 2016 johan. All rights reserved.
//

import UIKit

class TrainingViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    
    //MARK: - IBOutlets
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var hour1Lbl: UILabel!
    @IBOutlet weak var day2Lbl: UILabel!
    @IBOutlet weak var day1Lbl: UILabel!
    @IBOutlet weak var date1Lbl: UILabel!
    @IBOutlet weak var date2Lbl: UILabel!
    @IBOutlet weak var hour2Lbl: UIView!
    @IBOutlet weak var aanwezig1Btn: UIButton!
    @IBOutlet weak var spelers1Btn: UIButton!
    @IBOutlet weak var aanwezig2Btn: UIButton!
    @IBOutlet weak var spelers2Btn: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
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
        let cell = tableView.dequeueReusableCellWithIdentifier("TrainingCell")! as! TrainingTableViewCell
        cell.configureCell()
        return cell
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
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
