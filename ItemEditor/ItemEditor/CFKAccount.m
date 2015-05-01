//
//  CFKAccount.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKAccount.h"
#import "CFKImage.h"
#import "CFKStore.h"

@implementation CFKAccount

- (id)init {
    self = [super init];
    if (self) {
        self.balance = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.credit = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.email = @"";
        self.firstName = @"";
        self.lastName = @"";
        self.phone = @"";
        self.image = [[CFKImage alloc] init];
        self.store = [[CFKStore alloc] init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.balance = [aDecoder decodeObjectForKey:@"balance"];
        self.credit = [aDecoder decodeObjectForKey:@"credit"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.phone = [aDecoder decodeObjectForKey:@"phone"];
        self.image = [aDecoder decodeObjectForKey:@"image"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.balance forKey:@"balance"];
    [aCoder encodeObject:self.credit forKey:@"credit"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.phone forKey:@"phone"];
    [aCoder encodeObject:self.image forKey:@"image"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
