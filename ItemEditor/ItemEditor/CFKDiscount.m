//
//  CFKDiscount.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKDiscount.h"
#import "CFKStore.h"
#import "CFKPrice.h"

@implementation CFKDiscount

- (id)init {
    self = [super init];
    if (self) {
        self.store = nil;
        self.prices = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.store = [aDecoder decodeObjectForKey:@"store"];
        self.prices = [aDecoder decodeObjectForKey:@"prices"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.store forKey:@"store"];
    [aCoder encodeObject:self.prices forKey:@"prices"];
}

@end
