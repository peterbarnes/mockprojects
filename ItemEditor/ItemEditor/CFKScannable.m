//
//  CFKScannable.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKScannable.h"
#import "CFKImage.h"

@implementation CFKScannable

- (id)init {
    self = [super init];
    if (self) {
        self.sku = @"";
        self.image = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.sku = [aDecoder decodeObjectForKey:@"sku"];
        self.image = [aDecoder decodeObjectForKey:@"image"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.sku forKey:@"sku"];
    [aCoder encodeObject:self.image forKey:@"image"];
}

@end
