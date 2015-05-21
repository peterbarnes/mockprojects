//
//  CFKTill.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKTill.h"
#import "CFKEmployee.h"
#import "CFKStore.h"
#import "CFKTransaction.h"

@implementation CFKTill

- (id)init {
    self = [super init];
    if (self) {
        self.balance = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.maximum = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.minimum = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.employee = nil;
        self.store = nil;
        self.transactions = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.balance = [aDecoder decodeObjectForKey:@"balance"];
        self.maximum = [aDecoder decodeObjectForKey:@"maximum"];
        self.minimum = [aDecoder decodeObjectForKey:@"minimum"];
        self.employee = [aDecoder decodeObjectForKey:@"employee"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
        self.transactions = [aDecoder decodeObjectForKey:@"transactions"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.balance forKey:@"balance"];
    [aCoder encodeObject:self.maximum forKey:@"maximum"];
    [aCoder encodeObject:self.minimum forKey:@"minimum"];
    [aCoder encodeObject:self.employee forKey:@"employee"];
    [aCoder encodeObject:self.store forKey:@"store"];
    [aCoder encodeObject:self.transactions forKey:@"transactions"];
}

@end
