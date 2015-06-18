//
//  CFKCatalog.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKCatalog.h"
#import "CFKStore.h"
#import "CFKItem.h"

@implementation CFKCatalog

- (id)init {
    self = [super init];
    if (self) {
        self.children = nil;
        self.items = nil;
        self.parent = nil;
        self.store = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.children = [aDecoder decodeObjectForKey:@"children"];
        self.items = [aDecoder decodeObjectForKey:@"items"];
        self.parent = [aDecoder decodeObjectForKey:@"parent"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.children forKey:@"children"];
    [aCoder encodeObject:self.items forKey:@"items"];
    [aCoder encodeObject:self.parent forKey:@"parent"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
