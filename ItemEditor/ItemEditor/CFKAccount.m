//
//  CFKAccount.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKAccount.h"
#import "CFKPayment.h"
#import "CFKStore.h"

@implementation CFKAccount

- (id)init {
    self = [super init];
    if (self) {
        self.balance = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.credit = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.email = @"";
        self.name = @"New Account";
        self.phone = @"";
        self.surname = @"";
        self.payments = nil;
        self.store = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.balance = [aDecoder decodeObjectForKey:@"balance"];
        self.credit = [aDecoder decodeObjectForKey:@"credit"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.phone = [aDecoder decodeObjectForKey:@"phone"];
        self.surname = [aDecoder decodeObjectForKey:@"surname"];
        self.payments = [aDecoder decodeObjectForKey:@"payments"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.balance forKey:@"balance"];
    [aCoder encodeObject:self.credit forKey:@"credit"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.phone forKey:@"phone"];
    [aCoder encodeObject:self.surname forKey:@"surname"];
    [aCoder encodeObject:self.payments forKey:@"payments"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
