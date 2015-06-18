//
//  CFKStore.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKStore.h"
#import "CFKContactable.h"
#import "CFKCatalog.h"
#import "CFKContainer.h"
#import "CFKDiscount.h"
#import "CFKLog.h"
#import "CFKPosition.h"
#import "CFKPrinter.h"
#import "CFKTax.h"
#import "CFKTemplate.h"
#import "CFKTill.h"
#import "CFKTransaction.h"

@implementation CFKStore

- (id)init {
    self = [super init];
    if (self) {
        self.address = @"";
        self.email = @"";
        self.incentive = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.incentiveMax = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.incentiveMin = [NSDecimalNumber decimalNumberWithMantissa:0 exponent:0 isNegative:NO];
        self.phone = @"";
        self.stripeID = @"";
        self.contacts = nil;
        self.catalogs = nil;
        self.containers = nil;
        self.discounts = nil;
        self.logs = nil;
        self.printers = nil;
        self.taxes = nil;
        self.templates = nil;
        self.tills = nil;
        self.transactions = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.address = [aDecoder decodeObjectForKey:@"address"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.incentive = [aDecoder decodeObjectForKey:@"incentive"];
        self.incentiveMax = [aDecoder decodeObjectForKey:@"incentiveMax"];
        self.incentiveMin = [aDecoder decodeObjectForKey:@"incentiveMin"];
        self.phone = [aDecoder decodeObjectForKey:@"phone"];
        self.stripeID = [aDecoder decodeObjectForKey:@"stripeID"];
        self.accounts = [aDecoder decodeObjectForKey:@"accounts"];
        self.catalogs = [aDecoder decodeObjectForKey:@"catalogs"];
        self.containers = [aDecoder decodeObjectForKey:@"containers"];
        self.discounts = [aDecoder decodeObjectForKey:@"discounts"];
        self.image = [aDecoder decodeObjectForKey:@"image"];
        self.logs = [aDecoder decodeObjectForKey:@"logs"];
        self.printers = [aDecoder decodeObjectForKey:@"printers"];
        self.taxes = [aDecoder decodeObjectForKey:@"taxes"];
        self.templates = [aDecoder decodeObjectForKey:@"templates"];
        self.tills = [aDecoder decodeObjectForKey:@"tills"];
        self.transactions = [aDecoder decodeObjectForKey:@"transactions"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.address forKey:@"address"];
    [aCoder encodeObject:self.incentive forKey:@"incentive"];
    [aCoder encodeObject:self.incentiveMax forKey:@"incentiveMax"];
    [aCoder encodeObject:self.incentiveMin forKey:@"incentiveMin"];
    [aCoder encodeObject:self.phone forKey:@"phone"];
    [aCoder encodeObject:self.stripeID forKey:@"stripeID"];
    [aCoder encodeObject:self.accounts forKey:@"accounts"];
    [aCoder encodeObject:self.catalogs forKey:@"catalogs"];
    [aCoder encodeObject:self.containers forKey:@"containers"];
    [aCoder encodeObject:self.discounts forKey:@"discounts"];
    [aCoder encodeObject:self.image forKey:@"image"];
    [aCoder encodeObject:self.logs forKey:@"logs"];
    [aCoder encodeObject:self.printers forKey:@"printers"];
    [aCoder encodeObject:self.taxes forKey:@"taxes"];
    [aCoder encodeObject:self.templates forKey:@"templates"];
    [aCoder encodeObject:self.tills forKey:@"tills"];
    [aCoder encodeObject:self.transactions forKey:@"transactions"];
}

@end
