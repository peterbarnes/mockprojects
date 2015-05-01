//
//  WindowController.h
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "DataSource.h"

@interface WindowController : NSWindowController

@property (nonatomic, strong) DataSource *dataSource;

@end
