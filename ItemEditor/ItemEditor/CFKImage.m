//
//  CFKImage.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKImage.h"
#import "CFKPayment.h"
#import "CFKScannable.h"
#import "CFKStore.h"

@implementation CFKImage

- (id)init {
    self = [super init];
    if (self) {
        self.data = nil;
        self.payment = nil;
        self.scannable = nil;
        self.store = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.data = [aDecoder decodeObjectForKey:@"data"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.data forKey:@"data"];
}

@end
