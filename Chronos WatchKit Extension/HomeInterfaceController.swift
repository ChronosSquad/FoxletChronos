//
//  HomeInterfaceController.swift
//  Chronos
//
//  Created by Foxlet on 1/27/18.
//  Copyright © 2018 FurCode. All rights reserved.
//

import WatchKit
import Foundation


class HomeInterfaceController: WKInterfaceController {
    @IBOutlet var homeTable: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
                
        homeTable.setRowTypes(["ButtonContextRow", "ButtonContextRow", "ButtonRow", "ButtonRow"])
        
        let recentsController = homeTable.rowControllerAtIndex(0) as! ButtonContextRowController
        recentsController.titleLabel.setText("Recents")
        recentsController.contextLabel.setText("Anemone, BrenBreak, watchBrowser")
        
        let updatesController = homeTable.rowControllerAtIndex(1) as! ButtonContextRowController
        updatesController.titleLabel.setText("Updates")
        updatesController.contextLabel.setText("BatteryLife, watchSnake")
        updatesController.buttonIcon.setImage(UIImage(named: "Updates"))
        
        let searchController = homeTable.rowControllerAtIndex(2) as! ButtonRowController
        searchController.titleLabel.setText("Search")
        searchController.buttonIcon.setImage(UIImage(named: "Search"))
        
        let settingsController = homeTable.rowControllerAtIndex(3) as! ButtonRowController
        settingsController.titleLabel.setText("Settings")
        settingsController.buttonIcon.setImage(UIImage(named: "Settings"))

    }
}
