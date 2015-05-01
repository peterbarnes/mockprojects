//
//  CFKStore.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKStore.h"
#import "CFKImage.h"

@implementation CFKStore

- (id)init {
    self = [super init];
    if (self) {
        self.allowNegative = [NSNumber numberWithBool:NO];
        self.incentive = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.incentiveMax = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.incentiveMin = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.name = @"";
        self.stripeID = @"";
        self.image = [[CFKImage alloc] init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.allowNegative = [aDecoder decodeObjectForKey:@"allowNegative"];
        self.incentive = [aDecoder decodeObjectForKey:@"incentive"];
        self.incentiveMax = [aDecoder decodeObjectForKey:@"incentiveMax"];
        self.incentiveMin = [aDecoder decodeObjectForKey:@"incentiveMin"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.stripeID = [aDecoder decodeObjectForKey:@"stripeID"];
        self.image = [aDecoder decodeObjectForKey:@"image"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.allowNegative forKey:@"allowNegative"];
    [aCoder encodeObject:self.incentive forKey:@"incentive"];
    [aCoder encodeObject:self.incentiveMax forKey:@"incentiveMax"];
    [aCoder encodeObject:self.incentiveMin forKey:@"incentiveMin"];
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.stripeID forKey:@"stripeID"];
    [aCoder encodeObject:self.image forKey:@"image"];
}

@end
