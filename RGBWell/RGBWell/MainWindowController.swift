//
//  MainWindowController.swift
//  RGBWell
//
//  Created by Peter Barnes on 4/30/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
    @IBAction func adjustRed(sender: NSSlider) {
        println("R slider's value is \(sender.floatValue)")
    }
    
}
