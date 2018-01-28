//
//  OptionsInterfaceController.swift
//  Chronos
//
//  Created by Foxlet on 1/27/18.
//  Copyright © 2018 FurCode. All rights reserved.
//

import WatchKit
import Foundation


class OptionsInterfaceController: WKInterfaceController {

    @IBOutlet var optionsTable: WKInterfaceTable!
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        optionsTable.setRowTypes(["OptionContextRow", "OptionContextRow", "OptionSwitchRow", "OptionRow"])
        
        let fetchController = optionsTable.rowControllerAtIndex(0) as! OptionContextRowController
        fetchController.optionLabel.setText("Fetch Updates")
        fetchController.contextLabel.setText("Requires internet")
        
        let cleanController = optionsTable.rowControllerAtIndex(1) as! OptionContextRowController
        cleanController.optionLabel.setText("Clean Packages")
        cleanController.contextLabel.setText("Fixes broken installs")
        
        let autoupdateController = optionsTable.rowControllerAtIndex(2) as! OptionSwitchRowController
        autoupdateController.optionSwitch.setTitle("Auto-Sync")
        
        let brickController = optionsTable.rowControllerAtIndex(3) as! OptionRowController
        brickController.optionLabel.setText("Brick Watch")
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
