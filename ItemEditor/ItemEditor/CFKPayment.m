//
//  CFKPayment.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKPayment.h"
#import "CFKAccount.h"
#import "CFKTransaction.h"

@implementation CFKPayment

- (id)init {
    self = [super init];
    if (self) {
        self.amount = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.incentive = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.tip = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.token = nil;
        self.type = 0;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.amount = [aDecoder decodeObjectForKey:@"amount"];
        self.incentive = [aDecoder decodeObjectForKey:@"incentive"];
        self.tip = [aDecoder decodeObjectForKey:@"tip"];
        self.token = [aDecoder decodeObjectForKey:@"token"];
        self.type = [aDecoder decodeObjectForKey:@"type"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.amount forKey:@"amount"];
    [aCoder encodeObject:self.incentive forKey:@"incentive"];
    [aCoder encodeObject:self.tip forKey:@"tip"];
    [aCoder encodeObject:self.token forKey:@"token"];
    [aCoder encodeObject:self.type forKey:@"type"];
}

@end
