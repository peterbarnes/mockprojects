//
//  CFKPrice.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKPrice.h"
#import "CFKImage.h"
#import "CFKItem.h"

@implementation CFKPrice

- (id)init {
    self = [super init];
    if (self) {
        self.amount = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.discounts = nil;
        self.groups = nil;
        self.item = nil;
        self.taxes = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.amount = [aDecoder decodeObjectForKey:@"amount"];
        self.discounts = [aDecoder decodeObjectForKey:@"discounts"];
        self.groups = [aDecoder decodeObjectForKey:@"groups"];
        self.item = [aDecoder decodeObjectForKey:@"item"];
        self.taxes = [aDecoder decodeObjectForKey:@"taxes"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.amount forKey:@"amount"];
    [aCoder encodeObject:self.discounts forKey:@"discounts"];
    [aCoder encodeObject:self.groups forKey:@"groups"];
    [aCoder encodeObject:self.item forKey:@"item"];
    [aCoder encodeObject:self.taxes forKey:@"taxes"];
}

@end
