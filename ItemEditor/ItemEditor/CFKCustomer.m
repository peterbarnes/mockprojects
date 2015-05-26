//
//  CFKCustomer.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/26/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKCustomer.h"
#import "CFKAccount.h"
#import "CFKImage.h"

@implementation CFKCustomer

- (id)init {
    self = [super init];
    if (self) {
        self.address = @"";
        self.email = @"";
        self.phone = @"";
        self.surname = @"New Customer";
        self.accounts = nil;
        self.image = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.address = [aDecoder decodeObjectForKey:@"address"];
        self.email = [aDecoder decodeObjectForKey:@"email"];
        self.phone = [aDecoder decodeObjectForKey:@"phone"];
        self.surname = [aDecoder decodeObjectForKey:@"surname"];
        self.accounts = [aDecoder decodeObjectForKey:@"accounts"];
        self.image = [aDecoder decodeObjectForKey:@"image"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.address forKey:@"address"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.phone forKey:@"phone"];
    [aCoder encodeObject:self.surname forKey:@"surname"];
    [aCoder encodeObject:self.accounts forKey:@"accounts"];
    [aCoder encodeObject:self.image forKey:@"image"];
}

@end
