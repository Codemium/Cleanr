//
//  AdminPageTwoViewController.swift
//  Cleanr
//
//  Created by vishwajeet on 07/08/18.
//  Copyright © 2018 vishwajeet jadeja. All rights reserved.
//

import UIKit

class AdminPageTwoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    var jobNameArray : [String] = ["Window cleaning","Carpet cleaning","House cleaning"]
    
    var dateArray = ["10-11-2018","12-5-2018","1-4-2018"]
    
    var clientNameArray = ["Hritik Roshan","Rutvik Roshan","Ritvik Roshan"]
    
    @IBOutlet weak var tableOutlet: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableOutlet.delegate = self
        tableOutlet.dataSource = self
        
        tableOutlet.separatorStyle = .none
    }

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        var sectionName = ""
        
        if section == 0 {
            sectionName = "Upcoming"
        }
        if section == 1 {
            sectionName = "Completed"
        }
        
        return sectionName
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return jobNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customJobsCell", for: indexPath) as! CustomJobsCell
        
        cell.jobName.text = jobNameArray[indexPath.row]
        
        cell.date.text = dateArray[indexPath.row]
        
        cell.clientName.text = clientNameArray[indexPath.row]
        
        tableView.rowHeight = 103
        
        return cell
        
    }
    


}
