//
//  AdminTabViewController.swift
//  Cleanr
//
//  Created by vishwajeet on 07/08/18.
//  Copyright © 2018 vishwajeet jadeja. All rights reserved.
//

import UIKit
import Tabman
import Pageboy
import ChameleonFramework

class AdminTabViewController: TabmanViewController, PageboyViewControllerDataSource {
    
    
    var viewControllers : [UIViewController] = [AdminPageOneViewController(),AdminPageTwoViewController(),AdminPageThreeViewController()]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.dataSource = self
        
        self.bar.items = [Item(title: "Add"),
                          Item(title: "History"),
                          Item(title: "Timesheet")]

        
            self.bar.style = .buttonBar
        
            guard let hexColor = UIColor(hexString: "A6E3E9") else {fatalError()}
        
            UIView.appearance().backgroundColor = hexColor
        
        
            self.bar.appearance = TabmanBar.Appearance({ (appearance) in
            // customize appearance here
                appearance.state.selectedColor = .black
                appearance.indicator.color = .black
            })
    }
    
    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        
        
        return viewControllers.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController,
                        at index: PageboyViewController.PageIndex) -> UIViewController? {
        
        return viewControllers[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
    
    
    
}
