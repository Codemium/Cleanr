//
//  AdminPageThreeViewController.swift
//  Cleanr
//
//  Created by vishwajeet on 07/08/18.
//  Copyright © 2018 vishwajeet jadeja. All rights reserved.
//

import UIKit

class AdminPageThreeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var nameArray = ["Martin Garrix","Sam Smith"]
    
    var descArray = ["House cleaning and carwash at 34th Ave.","Office vacuuming and cleaning at Sunset blvd."]

    var dateArray = ["10-11-2018","12-5-2018"]
    
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableViewOutlet.delegate = self
        tableViewOutlet.dataSource = self
        
        
        tableViewOutlet.separatorStyle = .none
        
        
    }

  //MARK - tableview datasource methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
       // tableViewOutlet.rowHeight = 106
        
        return nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "timeSheetCell", for: indexPath) as! CustomTimeSheetCell
        
        
        cell.nameLabel.text = nameArray[indexPath.row]
        cell.descLabel.text = descArray[indexPath.row]
        cell.dateLabel.text = dateArray[indexPath.row]
        
       
        
        tableViewOutlet.rowHeight = 106
        
        return cell
        
        
    }
    
    
    
    
    
    
 

}
