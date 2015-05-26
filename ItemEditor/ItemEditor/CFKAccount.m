//
//  CFKAccount.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKAccount.h"
#import "CFKCustomer.h"
#import "CFKPayment.h"
#import "CFKStore.h"

@implementation CFKAccount

- (id)init {
    self = [super init];
    if (self) {
        self.balance = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.credit = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.customer = nil;
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
        self.customer = [aDecoder decodeObjectForKey:@"customer"];
        self.payments = [aDecoder decodeObjectForKey:@"payments"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.balance forKey:@"balance"];
    [aCoder encodeObject:self.credit forKey:@"credit"];
    [aCoder encodeObject:self.customer forKey:@"customer"];
    [aCoder encodeObject:self.payments forKey:@"payments"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
