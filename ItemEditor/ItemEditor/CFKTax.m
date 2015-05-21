//
//  CFKTax.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKTax.h"
#import "CFKStore.h"
#import "CFKPrice.h"

@implementation CFKTax

- (id)init {
    self = [super init];
    if (self) {
        self.prices = nil;
        self.store = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.prices = [aDecoder decodeObjectForKey:@"prices"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.prices forKey:@"prices"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
