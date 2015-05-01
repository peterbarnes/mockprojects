//
//  WindowController.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "WindowController.h"
#import "CFKBase.h"

@interface WindowController ()

@end

@implementation WindowController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    DataSource *dataSource = [[DataSource alloc] init];
    self.contentViewController.representedObject = dataSource;
    self.dataSource = dataSource;

    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

@end
