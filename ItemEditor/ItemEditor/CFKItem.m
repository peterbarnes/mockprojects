//
//  CFKItem.m
//  ItemEditor
//
//  Created by Peter Barnes on 4/30/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKItem.h"
#import "CFKCatalog.h"
#import "CFKLine.h"
#import "CFKPrice.h"
#import "CFKUnit.h"

@implementation CFKItem

- (id)init {
    self = [super init];
    if (self) {
        self.maximum = 0;
        self.rating = 0;
        self.target = 0;
        self.catalog = nil;
        self.lines = nil;
        self.prices = nil;
        self.units = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.maximum = [aDecoder decodeObjectForKey:@"maximum"];
        self.rating = [aDecoder decodeObjectForKey:@"rating"];
        self.target = [aDecoder decodeObjectForKey:@"target"];
        self.catalog = [aDecoder decodeObjectForKey:@"catalog"];
        self.lines = [aDecoder decodeObjectForKey:@"lines"];
        self.prices = [aDecoder decodeObjectForKey:@"prices"];
        self.units = [aDecoder decodeObjectForKey:@"units"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.maximum forKey:@"maximum"];
    [aCoder encodeObject:self.rating forKey:@"rating"];
    [aCoder encodeObject:self.target forKey:@"target"];
    [aCoder encodeObject:self.catalog forKey:@"catalog"];
    [aCoder encodeObject:self.lines forKey:@"lines"];
    [aCoder encodeObject:self.prices forKey:@"prices"];
    [aCoder encodeObject:self.units forKey:@"units"];
}

@end
