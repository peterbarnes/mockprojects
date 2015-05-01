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
        self.automatic = [NSNumber numberWithBool:NO];
        self.name = @"";
        self.image = [[CFKImage alloc] init];
        self.item = [[CFKItem alloc] init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.amount = [aDecoder decodeObjectForKey:@"amount"];
        self.automatic = [aDecoder decodeObjectForKey:@"automatic"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.image = [aDecoder decodeObjectForKey:@"image"];
        self.item = [aDecoder decodeObjectForKey:@"item"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.amount forKey:@"amount"];
    [aCoder encodeObject:self.automatic forKey:@"automatic"];
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.image forKey:@"image"];
    [aCoder encodeObject:self.item forKey:@"item"];
}

@end
