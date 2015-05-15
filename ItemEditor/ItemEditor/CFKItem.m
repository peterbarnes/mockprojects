//
//  CFKItem.m
//  ItemEditor
//
//  Created by Peter Barnes on 4/30/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKItem.h"
#import "CFKCatalog.h"

@implementation CFKItem

- (id)init {
    self = [super init];
    if (self) {
        self.name = @"New Item";
        self.summary = @"";
        self.catalog = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.name = [aDecoder decodeObjectForKey:@"name"];
        self.summary = [aDecoder decodeObjectForKey:@"summary"];
        self.catalog = [aDecoder decodeObjectForKey:@"catalog"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.name forKey:@"name"];
    [aCoder encodeObject:self.summary forKey:@"summary"];
    [aCoder encodeObject:self.catalog forKey:@"catalog"];
}

@end
