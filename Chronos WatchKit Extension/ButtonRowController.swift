//
//  ButtonContextRowController.swift
//  Chronos
//
//  Created by Foxlet on 1/27/18.
//  Copyright © 2018 FurCode. All rights reserved.
//

import WatchKit

class ButtonContextRowController: NSObject {
    @IBOutlet var titleLabel: WKInterfaceLabel!
    @IBOutlet var contextLabel: WKInterfaceLabel!
    @IBOutlet var buttonIcon: WKInterfaceImage!
}

class ButtonRowController: NSObject {
    @IBOutlet var titleLabel: WKInterfaceLabel!
    @IBOutlet var buttonIcon: WKInterfaceImage!
}

class OptionContextRowController: NSObject {
    @IBOutlet var optionLabel: WKInterfaceLabel!
    @IBOutlet var contextLabel: WKInterfaceLabel!
}

class OptionSwitchRowController: NSObject {
    @IBOutlet var optionSwitch: WKInterfaceSwitch!
}

class OptionRowController: NSObject {
    @IBOutlet var optionLabel: WKInterfaceLabel!
}