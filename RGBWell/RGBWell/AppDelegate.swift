//
//  AppDelegate.swift
//  RGBWell
//
//  Created by Peter Barnes on 4/30/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?
    
    func applicationDidFinishLaunching(notification: NSNotification) {
        
        let mainWindowController = MainWindowController()
        mainWindowController.showWindow(self)
        self.mainWindowController = mainWindowController
        
    }

}

