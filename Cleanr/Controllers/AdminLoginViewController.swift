//
//  AdminLoginViewController.swift
//  Cleanr
//
//  Created by vishwajeet on 10/08/18.
//  Copyright © 2018 vishwajeet jadeja. All rights reserved.
//

import UIKit

class AdminLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "adminLogin", sender: self)
    }
    

}
