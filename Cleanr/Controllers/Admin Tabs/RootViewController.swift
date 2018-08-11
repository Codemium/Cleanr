//
//  AdminTabViewController.swift
//  Cleanr
//
//  Created by vishwajeet on 07/08/18.
//  Copyright © 2018 vishwajeet jadeja. All rights reserved.
//

import UIKit
import PageMenuKitSwift
import ChameleonFramework

class RootViewController: UIViewController
{
    
    
    var pageMenuController: PMKPageMenuController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       // print("this view is loading up")
        
        var controllers: [UIViewController] = []
        let viewController1 = storyboard?.instantiateViewController(withIdentifier: "addVc") as! AdminPageOneViewController
        viewController1.title = "Add"
        controllers.append(viewController1)
        
        
        
        let viewController2 = storyboard?.instantiateViewController(withIdentifier: "historyVc") as! AdminPageTwoViewController
        viewController2.title = "History"
        controllers.append(viewController2)
        
        let viewController3 = storyboard?.instantiateViewController(withIdentifier: "timesheetVc") as! AdminPageThreeViewController
        viewController3.title = "Timesheet"
        controllers.append(viewController3)

        
        
        let statusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.size.height
        /*
         * Available menu styles:
         * .Plain, .Tab, .Smart, .Hacka, .Ellipse, .Web, .Suite, .NetLab and .NHK
         * See PMKPageMenuItem.swift in PageMenuKit folder.
         *
         * menuColors: [] means that we will use the default colors
         */
       // pageMenuController = PMKPageMenuController(controllers: controllers, menuStyle: .Plain, topBarHeight: statusBarHeight)
        pageMenuController = PMKPageMenuController(controllers: controllers, menuStyle: .Plain, menuColors: [ UIColor(hexString: "71C9CE")! ], topBarHeight: statusBarHeight)
        self.addChildViewController(pageMenuController!)
        self.view.addSubview(pageMenuController!.view)
        pageMenuController?.didMove(toParentViewController: self)
    }
}
