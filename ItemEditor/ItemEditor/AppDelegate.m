//
//  AppDelegate.m
//  ItemEditor
//
//  Created by Peter Barnes on 4/30/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    NSLog(@"application running");
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    NSLog(@"application stopping");
    [[NSNotificationCenter defaultCenter] postNotificationName:@"applicationShouldSaveNotification" object:nil];
    NSLog(@"application notification sent for saving");
}

//- (void)awakeFromNib
//{
//    
//    [NSApp setDelegate:self];
//    [self.dataSource load];
//    
//}
//
//- (void)applicationWillTerminate
//{
//    [self.dataSource save];
//}

@end
