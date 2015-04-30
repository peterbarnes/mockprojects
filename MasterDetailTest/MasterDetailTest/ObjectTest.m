//
//  Object.m
//  MasterDetailTest
//
//  Created by Peter Barnes on 4/28/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "ObjectTest.h"

@implementation ObjectTest

- (id)init
{
    self = [super init];
    if (self) {
        self.name = @"New Object";
        self.property1 = @"Property 1";
        self.property2 = @"Property 2";
        self.property3 = @"Property 3";
    }
    return self;
}

@end
