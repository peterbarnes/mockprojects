//
//  CFKContainer.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/21/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKContainer.h"
#import "CFKStore.h"
#import "CFKUnit.h"

@implementation CFKContainer

- (id)init {
    self = [super init];
    if (self) {
        self.maximum = 0;
        self.target = 0;
        self.children = nil;
        self.parent = nil;
        self.store = nil;
        self.units = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.maximum = [aDecoder decodeObjectForKey:@"maximum"];
        self.target = [aDecoder decodeObjectForKey:@"target"];
        self.children = [aDecoder decodeObjectForKey:@"children"];
        self.parent = [aDecoder decodeObjectForKey:@"parent"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
        self.units = [aDecoder decodeObjectForKey:@"units"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.maximum forKey:@"maximum"];
    [aCoder encodeObject:self.target forKey:@"target"];
    [aCoder encodeObject:self.children forKey:@"children"];
    [aCoder encodeObject:self.parent forKey:@"parent"];
    [aCoder encodeObject:self.store forKey:@"store"];
    [aCoder encodeObject:self.units forKey:@"units"];
}

@end
