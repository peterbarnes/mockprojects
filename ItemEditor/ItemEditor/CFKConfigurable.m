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
        self.automatic = [NSNumber numberWithBool:NO];
        self.configurable = [NSNumber numberWithBool:YES];
        self.name = @"";
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.amount = [aDecoder decodeObjectForKey:@"amount"];
        self.automatic = [aDecoder decodeObjectForKey:@"automatic"];
        self.configurable = [aDecoder decodeObjectForKey:@"configurable"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.amount forKey:@"amount"];
    [aCoder encodeObject:self.automatic forKey:@"automatic"];
    [aCoder encodeObject:self.configurable forKey:@"configurable"];
    [aCoder encodeObject:self.name forKey:@"name"];
}

@end
