//
//  CleanerAllJobsViewController.swift
//  Cleanr
//
//  Created by vishwajeet on 14/08/18.
//  Copyright © 2018 vishwajeet jadeja. All rights reserved.
//

import UIKit

class CleanerAllJobsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    let jobName : [String] = ["Window cleaning","Carpet cleaning"]
    
    let address : [String] = ["House cleaning and carwash at 34th Ave.","Office vacuuming and cleaning at Sunset blvd."]
    
    let date : [String] = ["10-11-2018","12-5-2018"]
    
    let hours: [Int] = [3,5]
    
    @IBOutlet weak var tableViewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            tableViewOutlet.delegate = self
            tableViewOutlet.dataSource = self
        
        
        tableViewOutlet.separatorStyle = .none
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return jobName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cleanerJobCell", for: indexPath) as! CleanerAllJobsTableViewCell
        
        cell.jobName.text = jobName[indexPath.row]
        cell.jobAddress.text = address[indexPath.row]
        cell.jobDate.text = date[indexPath.row]
        cell.jobHours.text = "\(hours[indexPath.row]) hrs"

        tableViewOutlet.rowHeight = 120
        
        return cell
        
        
    }
    
    

}
