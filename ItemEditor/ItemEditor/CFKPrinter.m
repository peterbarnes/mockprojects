//
//  CFKPrinter.m
//  ItemEditor
//
//  Created by Peter Barnes on 5/1/15.
//  Copyright (c) 2015 Peter Barnes. All rights reserved.
//

#import "CFKPrinter.h"
#import "CFKStore.h"
#import "CFKTemplate.h"

@implementation CFKPrinter

- (id)init {
    self = [super init];
    if (self) {
        self.path = @"";
        self.store = nil;
        self.templates = nil;
    }
    return self;
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    self = [self init];
    if (self) {
        self.path = [aDecoder decodeObjectForKey:@"path"];
        self.store = [aDecoder decodeObjectForKey:@"store"];
        self.templates = [aDecoder decodeObjectForKey:@"templates"];
    }
    return self;
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.path forKey:@"path"];
    [aCoder encodeObject:self.store forKey:@"store"];
    [aCoder encodeObject:self.templates forKey:@"templates"];
}

@end
