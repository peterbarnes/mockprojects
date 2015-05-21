//
//  CFKConfigurable.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKConfigurable.h"

@implementation CFKConfigurable

- (id)init {
    self = [super init];
    if (self) {
        self.amount = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.amount = [aDecoder decodeObjectForKey:@"amount"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.amount forKey:@"amount"];
}

@end
