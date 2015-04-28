//
//  ViewController.m
//  MasterDetailTest
//
//  Created by Peter Barnes on 4/28/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

-(id)init
{
    self = [super init];
    if (self) {
        self.objects = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
}

- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}

@end
