//
//  CFKCatalog.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKCatalog.h"
#import "CFKImage.h"
#import "CFKStore.h"

@implementation CFKCatalog

- (id)init {
    self = [super init];
    if (self) {
        self.name = @"";
        self.image = [[CFKImage alloc] init];
        self.store = [[CFKStore alloc] init];
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.image = [aDecoder decodeObjectForKey:@"image"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.image forKey:@"image"];
    [aCoder encodeObject:self.store forKey:@"store"];
}

@end
