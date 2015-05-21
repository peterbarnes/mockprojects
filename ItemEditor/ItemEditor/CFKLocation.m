//
//  CFKLocation.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKLocation.h"

@implementation CFKLocation

- (id)init {
    self = [super init];
    if (self) {
        self.latitude = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.longitude = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.parent = nil;
        self.children = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.latitude = [aDecoder decodeObjectForKey:@"latitude"];
        self.longitude = [aDecoder decodeObjectForKey:@"longitude"];
        self.parent = [aDecoder decodeObjectForKey:@"parent"];
        self.children = [aDecoder decodeObjectForKey:@"children"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.latitude forKey:@"latitude"];
    [aCoder encodeObject:self.longitude forKey:@"longitude"];
    [aCoder encodeObject:self.parent forKey:@"parent"];
    [aCoder encodeObject:self.children forKey:@"children"];
}

@end
